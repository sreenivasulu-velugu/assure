# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['FACEBOOK_KEY_HEROKU'] = '282524125170321'
ENV['FACEBOOK_SECRET_HEROKU'] = '3b63ba8466e9f1a977402f4653231457'

ENV['FACEBOOK_KEY_LOCAL'] = '221969307914563'
ENV['FACEBOOK_SECRET_LOCAL'] = '0729498050c860339acb88539af074b4'

# Initialize the rails application
Assure::Application.initialize!