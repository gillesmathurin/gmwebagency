require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/modeles/new.html.erb" do
  include ModelesHelper

  before(:each) do
    assigns[:modele] = stub_model(Modele,
      :new_record? => true,
      :nom => "value for nom",
      :desc => "value for desc",
      :weburl => "value for weburl",
      :picture_filename => "value for picture_filename",
      :picture_content_type => "value for picture_content_type",
      :picture_file_size => 1
    )
  end

  it "renders new modele form" do
    render

    response.should have_tag("form[action=?][method=post]", modeles_path) do
      with_tag("input#modele_nom[name=?]", "modele[nom]")
      with_tag("textarea#modele_desc[name=?]", "modele[desc]")
      with_tag("input#modele_weburl[name=?]", "modele[weburl]")
      with_tag("input#modele_picture_filename[name=?]", "modele[picture_filename]")
      with_tag("input#modele_picture_content_type[name=?]", "modele[picture_content_type]")
      with_tag("input#modele_picture_file_size[name=?]", "modele[picture_file_size]")
    end
  end
end
