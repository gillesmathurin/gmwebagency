module ProjetsHelper
  
  def cat_for_display(category)
    case category
    when "SI"
      "Système d'information"
    when "site"
      "Site internet"
    when "WebService"
      "WebService"
    when "Infographie"
      "Infographie"
    end
  end
  
end
