class UserMailer < ActionMailer::Base
  default from: 'henke.mike@gmail.com'
  default to: 'henke.mike@gmail.com'
  default bcc: 'henke.mike@gmail.com'
  
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail to: @user.email, subject: 'Welcome to My Awesome Site'
  end

  def contact_email(contact)
    @contact = contact
    @url  = 'http://example.com/login'
    mail subject: @contact.subject, from: @contact.email, body: @contact.message
  end
end