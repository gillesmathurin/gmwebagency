class ProspectsController < ApplicationController
  def new
    @prospect = Prospect.new
  end

  def create
    @prospect = Prospect.new(params[:prospect])
    
    respond_to do |format|
      if @prospect.save!
        ContactMailer.deliver_contact(@prospect)
        flash[:notice] = "Merci, nous entrerons prochainement en contact avec vous."
        format.html { redirect_to contacts_url() }
      else
        format.html { redirect_to contacts_url() }
      end
    end
  end

  def index
    @prospects = Prospect.all(:order => "nom asc")
  end

end
