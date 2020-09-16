# class UserMailer < ApplicationMailer
	# default from: 'no-reply@CatWeb.fr'

	# def welcome_email(user)
	# 	@user = user
	# 	mail(
	# 		to: @user.email,
	# 		delivery_method_options: { api_key: ENV['MAIL_PUBLIC'], secret_key: ENV['MAIL_SECRET'] }
	# 	)
	# end
# end

class UserMailer < ApplicationMailer
  default from: 'rosval6578@gmail.com'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    # @url  = 'http://monsite.fr/login' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end
end
