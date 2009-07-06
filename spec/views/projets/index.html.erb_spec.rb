require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/projets/index.html.erb" do
  include ProjetsHelper
  
  before(:each) do
    assigns[:projets] = [
      stub_model(Projet,
        :nom => "value for nom",
        :weburl => "value for weburl",
        :desc => "value for desc",
        :category => "value for category"
      ),
      stub_model(Projet,
        :nom => "value for nom",
        :weburl => "value for weburl",
        :desc => "value for desc",
        :category => "value for category"
      )
    ]
  end

  it "renders a list of projets" do
    render
    response.should have_tag("tr>td", "value for nom".to_s, 2)
    response.should have_tag("tr>td", "value for weburl".to_s, 2)
    response.should have_tag("tr>td", "value for desc".to_s, 2)
    response.should have_tag("tr>td", "value for category".to_s, 2)
  end
end

