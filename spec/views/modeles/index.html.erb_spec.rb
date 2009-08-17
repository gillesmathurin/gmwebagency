require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/modeles/index.html.erb" do
  include ModelesHelper

  before(:each) do
    assigns[:modeles] = [
      stub_model(Modele,
        :nom => "value for nom",
        :desc => "value for desc",
        :weburl => "value for weburl",
        :picture_filename => "value for picture_filename",
        :picture_content_type => "value for picture_content_type",
        :picture_file_size => 1
      ),
      stub_model(Modele,
        :nom => "value for nom",
        :desc => "value for desc",
        :weburl => "value for weburl",
        :picture_filename => "value for picture_filename",
        :picture_content_type => "value for picture_content_type",
        :picture_file_size => 1
      )
    ]
  end

  it "renders a list of modeles" do
    render
    response.should have_tag("tr>td", "value for nom".to_s, 2)
    response.should have_tag("tr>td", "value for desc".to_s, 2)
    response.should have_tag("tr>td", "value for weburl".to_s, 2)
    response.should have_tag("tr>td", "value for picture_filename".to_s, 2)
    response.should have_tag("tr>td", "value for picture_content_type".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
