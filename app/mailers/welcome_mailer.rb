class WelcomeMailer < ApplicationMailer
  def welcome_send(user)
    @user = user
    mail to: user.email, subject: 'Welcome to Shopz', from: 'schopz.social@gmail.com'
  end
end
