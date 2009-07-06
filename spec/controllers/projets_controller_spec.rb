require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ProjetsController do

  def mock_projet(stubs={})
    @mock_projet ||= mock_model(Projet, stubs)
  end
  
  describe "GET index" do
    it "assigns all projets as @projets" do
      Projet.stub!(:find).with(:all).and_return([mock_projet])
      get :index
      assigns[:projets].should == [mock_projet]
    end
  end

  describe "GET show" do
    it "assigns the requested projet as @projet" do
      Projet.stub!(:find).with("37").and_return(mock_projet)
      get :show, :id => "37"
      assigns[:projet].should equal(mock_projet)
    end
  end

  describe "GET new" do
    it "assigns a new projet as @projet" do
      Projet.stub!(:new).and_return(mock_projet)
      get :new
      assigns[:projet].should equal(mock_projet)
    end
  end

  describe "GET edit" do
    it "assigns the requested projet as @projet" do
      Projet.stub!(:find).with("37").and_return(mock_projet)
      get :edit, :id => "37"
      assigns[:projet].should equal(mock_projet)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created projet as @projet" do
        Projet.stub!(:new).with({'these' => 'params'}).and_return(mock_projet(:save => true))
        post :create, :projet => {:these => 'params'}
        assigns[:projet].should equal(mock_projet)
      end

      it "redirects to the created projet" do
        Projet.stub!(:new).and_return(mock_projet(:save => true))
        post :create, :projet => {}
        response.should redirect_to(projet_url(mock_projet))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved projet as @projet" do
        Projet.stub!(:new).with({'these' => 'params'}).and_return(mock_projet(:save => false))
        post :create, :projet => {:these => 'params'}
        assigns[:projet].should equal(mock_projet)
      end

      it "re-renders the 'new' template" do
        Projet.stub!(:new).and_return(mock_projet(:save => false))
        post :create, :projet => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested projet" do
        Projet.should_receive(:find).with("37").and_return(mock_projet)
        mock_projet.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :projet => {:these => 'params'}
      end

      it "assigns the requested projet as @projet" do
        Projet.stub!(:find).and_return(mock_projet(:update_attributes => true))
        put :update, :id => "1"
        assigns[:projet].should equal(mock_projet)
      end

      it "redirects to the projet" do
        Projet.stub!(:find).and_return(mock_projet(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(projet_url(mock_projet))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested projet" do
        Projet.should_receive(:find).with("37").and_return(mock_projet)
        mock_projet.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :projet => {:these => 'params'}
      end

      it "assigns the projet as @projet" do
        Projet.stub!(:find).and_return(mock_projet(:update_attributes => false))
        put :update, :id => "1"
        assigns[:projet].should equal(mock_projet)
      end

      it "re-renders the 'edit' template" do
        Projet.stub!(:find).and_return(mock_projet(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested projet" do
      Projet.should_receive(:find).with("37").and_return(mock_projet)
      mock_projet.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the projets list" do
      Projet.stub!(:find).and_return(mock_projet(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(projets_url)
    end
  end

end
