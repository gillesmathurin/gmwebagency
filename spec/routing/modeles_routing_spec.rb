require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ModelesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "modeles", :action => "index").should == "/modeles"
    end

    it "maps #new" do
      route_for(:controller => "modeles", :action => "new").should == "/modeles/new"
    end

    it "maps #show" do
      route_for(:controller => "modeles", :action => "show", :id => "1").should == "/modeles/1"
    end

    it "maps #edit" do
      route_for(:controller => "modeles", :action => "edit", :id => "1").should == "/modeles/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "modeles", :action => "create").should == {:path => "/modeles", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "modeles", :action => "update", :id => "1").should == {:path =>"/modeles/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "modeles", :action => "destroy", :id => "1").should == {:path =>"/modeles/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/modeles").should == {:controller => "modeles", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/modeles/new").should == {:controller => "modeles", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/modeles").should == {:controller => "modeles", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/modeles/1").should == {:controller => "modeles", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/modeles/1/edit").should == {:controller => "modeles", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/modeles/1").should == {:controller => "modeles", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/modeles/1").should == {:controller => "modeles", :action => "destroy", :id => "1"}
    end
  end
end
