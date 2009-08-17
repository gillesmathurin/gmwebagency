require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/modeles/show.html.erb" do
  include ModelesHelper
  before(:each) do
    assigns[:modele] = @modele = stub_model(Modele,
      :nom => "value for nom",
      :desc => "value for desc",
      :weburl => "value for weburl",
      :picture_filename => "value for picture_filename",
      :picture_content_type => "value for picture_content_type",
      :picture_file_size => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nom/)
    response.should have_text(/value\ for\ desc/)
    response.should have_text(/value\ for\ weburl/)
    response.should have_text(/value\ for\ picture_filename/)
    response.should have_text(/value\ for\ picture_content_type/)
    response.should have_text(/1/)
  end
end
