# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['FACEBOOK_KEY'] = '221969307914563'
ENV['FACEBOOK_SECRET'] = '0729498050c860339acb88539af074b4'

# Initialize the rails application
Assure::Application.initialize!