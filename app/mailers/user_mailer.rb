class UserMailer < ApplicationMailer
  default from: 'no-reply@catweb.fr'
 
  def welcome_email(user)
    @user = user

    @url = "https://staskme.herokuapp.com/"
    mail(to: @user.email)
	end
end
