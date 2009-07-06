require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/projets/new.html.erb" do
  include ProjetsHelper
  
  before(:each) do
    assigns[:projet] = stub_model(Projet,
      :new_record? => true,
      :nom => "value for nom",
      :weburl => "value for weburl",
      :desc => "value for desc",
      :category => "value for category"
    )
  end

  it "renders new projet form" do
    render
    
    response.should have_tag("form[action=?][method=post]", projets_path) do
      with_tag("input#projet_nom[name=?]", "projet[nom]")
      with_tag("input#projet_weburl[name=?]", "projet[weburl]")
      with_tag("textarea#projet_desc[name=?]", "projet[desc]")
      with_tag("input#projet_category[name=?]", "projet[category]")
    end
  end
end


