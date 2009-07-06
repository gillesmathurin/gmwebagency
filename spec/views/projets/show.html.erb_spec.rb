require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/projets/show.html.erb" do
  include ProjetsHelper
  before(:each) do
    assigns[:projet] = @projet = stub_model(Projet,
      :nom => "value for nom",
      :weburl => "value for weburl",
      :desc => "value for desc",
      :category => "value for category"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ nom/)
    response.should have_text(/value\ for\ weburl/)
    response.should have_text(/value\ for\ desc/)
    response.should have_text(/value\ for\ category/)
  end
end

