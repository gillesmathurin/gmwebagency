class HomeController < ApplicationController
  # GET 'home/accueil'
  def accueil
    @projets = Projet.marked_for_mp
  end
  
  # GET '/services'
  def services
  end
  
  # GET '/societe'
  def societe
  end
  
  # GET '/contacts'
  def contact
  end
  
  # GET '/si_cyberbu'
  def cyberbus    
  end
end
