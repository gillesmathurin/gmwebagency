require 'tlsmail' 

# TODO : replace this when the domain name will be bought
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true, 
  :address              => "smtp.gmail.com", 
  :port                 => 587, 
  :domain               => 'localhost.localdomain',
  :authentication       => :plain,
  :user_name            => "gwadaman30@gmail.com", 
  :password             => "password", 
}
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = false
ActionMailer::Base.default_charset = "utf-8"