class ModelesController < ApplicationController
  # GET /modeles
  # GET /modeles.xml
  def index
    @modeles = Modele.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @modeles }
    end
  end

  # GET /modeles/1
  # GET /modeles/1.xml
  def show
    @modele = Modele.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @modele }
    end
  end

  # GET /modeles/new
  # GET /modeles/new.xml
  def new
    @modele = Modele.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @modele }
    end
  end

  # GET /modeles/1/edit
  def edit
    @modele = Modele.find(params[:id])
  end

  # POST /modeles
  # POST /modeles.xml
  def create
    @modele = Modele.new(params[:modele])

    respond_to do |format|
      if @modele.save
        flash[:notice] = 'Modele was successfully created.'
        format.html { redirect_to(@modele) }
        format.xml  { render :xml => @modele, :status => :created, :location => @modele }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @modele.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /modeles/1
  # PUT /modeles/1.xml
  def update
    @modele = Modele.find(params[:id])

    respond_to do |format|
      if @modele.update_attributes(params[:modele])
        flash[:notice] = 'Modele was successfully updated.'
        format.html { redirect_to(@modele) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @modele.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /modeles/1
  # DELETE /modeles/1.xml
  def destroy
    @modele = Modele.find(params[:id])
    @modele.destroy

    respond_to do |format|
      format.html { redirect_to(modeles_url) }
      format.xml  { head :ok }
    end
  end
end
