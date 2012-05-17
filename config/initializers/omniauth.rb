Rails.application.config.middleware.use OmniAuth::Builder do


	fb_permissions = 'email,offline_access,read_stream,user_about_me,user_birthday,user_education_history,user_hometown,user_location,user_photos,user_relationships,user_relationship_details,user_work_history,user_website'
	
	provider :facebook, APP_CONFIG['facebook_key'], APP_CONFIG['facebook_secret'],
					 :scope => fb_permissions, :display => 'popup'

end
