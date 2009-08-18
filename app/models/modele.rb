class Modele < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "150x150>" }
end
