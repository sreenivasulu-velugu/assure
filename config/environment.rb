# Load the rails application
require File.expand_path('../application', __FILE__)

ENV['FACEBOOK_KEY'] = '282524125170321'
ENV['FACEBOOK_SECRET'] = '3b63ba8466e9f1a977402f4653231457'

# Initialize the rails application
Assure::Application.initialize!