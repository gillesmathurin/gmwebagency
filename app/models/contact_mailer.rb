class ContactMailer < ActionMailer::Base
  def contact(prospect)
    subject ""
    from ""
    recipients "gillesmath@me.com"
    body :prospect => prospect
    sent_on Time.now
    charset "iso-8859-1"
  end
end
