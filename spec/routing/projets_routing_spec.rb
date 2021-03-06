require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ProjetsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "projets", :action => "index").should == "/projets"
    end
  
    it "maps #new" do
      route_for(:controller => "projets", :action => "new").should == "/projets/new"
    end
  
    it "maps #show" do
      route_for(:controller => "projets", :action => "show", :id => "1").should == "/projets/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "projets", :action => "edit", :id => "1").should == "/projets/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "projets", :action => "create").should == {:path => "/projets", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "projets", :action => "update", :id => "1").should == {:path =>"/projets/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "projets", :action => "destroy", :id => "1").should == {:path =>"/projets/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/projets").should == {:controller => "projets", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/projets/new").should == {:controller => "projets", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/projets").should == {:controller => "projets", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/projets/1").should == {:controller => "projets", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/projets/1/edit").should == {:controller => "projets", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/projets/1").should == {:controller => "projets", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/projets/1").should == {:controller => "projets", :action => "destroy", :id => "1"}
    end
  end
end
