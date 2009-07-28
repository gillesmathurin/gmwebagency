Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
# TODO : replace this when the domain name will be bought
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_charset = "utf-8"

ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true, 
  :address              => "smtp.gmail.com", 
  :port                 => 587, 
  :domain               => 'gmwebagency.com',
  :authentication       => :login,
  :user_name            => "gwadaman30@gmail.com", 
  :password             => "carmen30", 
}
