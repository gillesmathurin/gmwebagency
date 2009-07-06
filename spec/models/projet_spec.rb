require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Projet do
  before(:each) do
    @valid_attributes = {
      :nom => "value for nom",
      :weburl => "value for weburl",
      :desc => "value for desc",
      :mise_service => Date.today,
      :category => "value for category"
    }
  end

  it "should create a new instance given valid attributes" do
    Projet.create!(@valid_attributes)
  end
end
