class ContactMailer < ApplicationMailer
  def submitted(email, subject, content)
    @email = email
    mail to: "philippe.nougaillon@gmail.com", subject: "INNOSERV New Contact"
  end
end
