class ContactMailer < ActionMailer::Base
  def contact(prospect)
    subject ""
    from "gillesmath@gmwebagency.com"
    recipients "gillesmath@wanadoo.fr"
    body :prospect => prospect
    sent_on Time.now
    charset "iso-8859-1"
  end
end
