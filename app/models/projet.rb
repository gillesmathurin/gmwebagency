class Projet < ActiveRecord::Base
  named_scope :marked_for_mp, :conditions => ['marked_for_mp = ?', true], :limit => 3  
end
