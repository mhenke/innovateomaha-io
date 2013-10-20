class UserMailer < ActionMailer::Base
  default from: "innovateomaha@gmail.com"

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Sign Up Confirmation", bcc: "henke.mike@gmail.com"
  end
end
