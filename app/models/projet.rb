class Projet < ActiveRecord::Base
  has_attached_file :illus, :styles => {:thumb => "50x50>", :medium => "160x160>"}
  
  CATEGORY = [['site internet', 'site'], ["Systeme d'information", 'SI'],
   ["WebService","WebService"], ['Infographie', 'Infographie']]
  
  named_scope :marked_for_mp, :conditions => ['marked_for_mp = ?', true], :limit => 3  
end
