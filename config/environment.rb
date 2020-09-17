# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['MAIL_API'],
#   :password => ENV['MAIL_SECRET'],
#   :domain => 'catweb.fr',
#   :address => 'in-v3.mailjet.com',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }