class ProjetsController < ApplicationController
  uses_tiny_mce :options => { :theme => 'simple' }
  
  # GET /projets
  # GET /projets.xml
  def index
    @projets = Projet.all.group_by(&:category)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projets }
    end
  end

  # GET /projets/1
  # GET /projets/1.xml
  def show
    @projet = Projet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @projet }
    end
  end

  # GET /projets/new
  # GET /projets/new.xml
  def new
    @projet = Projet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @projet }
    end
  end

  # GET /projets/1/edit
  def edit
    @projet = Projet.find(params[:id])
  end

  # POST /projets
  # POST /projets.xml
  def create
    @projet = Projet.new(params[:projet])

    respond_to do |format|
      if @projet.save
        flash[:notice] = 'Projet was successfully created.'
        format.html { redirect_to(@projet) }
        format.xml  { render :xml => @projet, :status => :created, :location => @projet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @projet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projets/1
  # PUT /projets/1.xml
  def update
    @projet = Projet.find(params[:id])

    respond_to do |format|
      if @projet.update_attributes(params[:projet])
        flash[:notice] = 'Projet was successfully updated.'
        format.html { redirect_to(@projet) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @projet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projets/1
  # DELETE /projets/1.xml
  def destroy
    @projet = Projet.find(params[:id])
    @projet.destroy

    respond_to do |format|
      format.html { redirect_to(projets_url) }
      format.xml  { head :ok }
    end
  end
end
