# TODO : replace this when the domain name will be bought
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true, 
  :address              => "smtp.gmail.com", 
  :port                 => 587, 
  :domain               => 'gmwebagency.com',
  :authentication       => :plain,
  :user_name            => "gillesmath@gmwebagency.com", 
  :password             => "g1i9l7l7ou", 
}
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = false
ActionMailer::Base.default_charset = "utf-8"