require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Modele do
  before(:each) do
    @valid_attributes = {
      :nom => "value for nom",
      :desc => "value for desc",
      :weburl => "value for weburl",
      :picture_filename => "value for picture_filename",
      :picture_content_type => "value for picture_content_type",
      :picture_file_size => 1,
      :picture_updated_at => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Modele.create!(@valid_attributes)
  end
end
