class UserMailer < ApplicationMailer
  default from: 'no-reply@catweb.fr'
 
  def welcome_email(user)
    @user = user

    variable = Mailjet::Send.create(messages: [{
  	'From'=> {
    'Email'=> 'rosval6578@gmail.com',
    'Name'=> 'Staskme'
  	},
  	'To'=> [
    {
      'Email'=> @user.email,
      'Name'=> @user.email
    }
  	],
  	'Subject'=> 'Bienvenue sur Staskme !',
  	'TextPart'=> 'My first Mailjet email',
  	'HTMLPart'=> '<p>COUCOU</p>',
  	'CustomID' => 'AppGettingStartedTest'
		}]
		)
		p variable.attributes['Messages']
	end
end
