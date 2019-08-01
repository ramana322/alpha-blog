class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'
 
  def welcome_email
    @user = params(:user)
    @url  = 'http://example.com/login'
    mail(to: 'ramana@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
