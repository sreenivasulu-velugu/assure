Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, ENV['FACEBOOK_KEY_HEROKU'], ENV['FACEBOOK_SECRET_HEROKU'],
           :scope => 'email,offline_access,read_stream,user_about_me,user_birthday,user_education_history,user_hometown,user_location,user_photos,user_relationships,user_relationship_details,user_work_history,user_website', :display => 'popup'
end