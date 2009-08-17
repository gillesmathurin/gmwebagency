require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ModelesController do

  def mock_modele(stubs={})
    @mock_modele ||= mock_model(Modele, stubs)
  end

  describe "GET index" do
    it "assigns all modeles as @modeles" do
      Modele.stub!(:find).with(:all).and_return([mock_modele])
      get :index
      assigns[:modeles].should == [mock_modele]
    end
  end

  describe "GET show" do
    it "assigns the requested modele as @modele" do
      Modele.stub!(:find).with("37").and_return(mock_modele)
      get :show, :id => "37"
      assigns[:modele].should equal(mock_modele)
    end
  end

  describe "GET new" do
    it "assigns a new modele as @modele" do
      Modele.stub!(:new).and_return(mock_modele)
      get :new
      assigns[:modele].should equal(mock_modele)
    end
  end

  describe "GET edit" do
    it "assigns the requested modele as @modele" do
      Modele.stub!(:find).with("37").and_return(mock_modele)
      get :edit, :id => "37"
      assigns[:modele].should equal(mock_modele)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created modele as @modele" do
        Modele.stub!(:new).with({'these' => 'params'}).and_return(mock_modele(:save => true))
        post :create, :modele => {:these => 'params'}
        assigns[:modele].should equal(mock_modele)
      end

      it "redirects to the created modele" do
        Modele.stub!(:new).and_return(mock_modele(:save => true))
        post :create, :modele => {}
        response.should redirect_to(modele_url(mock_modele))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved modele as @modele" do
        Modele.stub!(:new).with({'these' => 'params'}).and_return(mock_modele(:save => false))
        post :create, :modele => {:these => 'params'}
        assigns[:modele].should equal(mock_modele)
      end

      it "re-renders the 'new' template" do
        Modele.stub!(:new).and_return(mock_modele(:save => false))
        post :create, :modele => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested modele" do
        Modele.should_receive(:find).with("37").and_return(mock_modele)
        mock_modele.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :modele => {:these => 'params'}
      end

      it "assigns the requested modele as @modele" do
        Modele.stub!(:find).and_return(mock_modele(:update_attributes => true))
        put :update, :id => "1"
        assigns[:modele].should equal(mock_modele)
      end

      it "redirects to the modele" do
        Modele.stub!(:find).and_return(mock_modele(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(modele_url(mock_modele))
      end
    end

    describe "with invalid params" do
      it "updates the requested modele" do
        Modele.should_receive(:find).with("37").and_return(mock_modele)
        mock_modele.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :modele => {:these => 'params'}
      end

      it "assigns the modele as @modele" do
        Modele.stub!(:find).and_return(mock_modele(:update_attributes => false))
        put :update, :id => "1"
        assigns[:modele].should equal(mock_modele)
      end

      it "re-renders the 'edit' template" do
        Modele.stub!(:find).and_return(mock_modele(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested modele" do
      Modele.should_receive(:find).with("37").and_return(mock_modele)
      mock_modele.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the modeles list" do
      Modele.stub!(:find).and_return(mock_modele(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(modeles_url)
    end
  end

end
