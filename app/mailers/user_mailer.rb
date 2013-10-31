class UserMailer < ActionMailer::Base
  default from: 'innovateomaha@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail to: @user.email, subject: 'Welcome to My Awesome Site'
  end

  def contact_email(contact)
    @contact = contact
    @url  = 'http://example.com/login'
    mail to: 'henke.mike@gmail.com', subject: @contact.subject, from: @contact.email, subject: @contact.subject
  end
end