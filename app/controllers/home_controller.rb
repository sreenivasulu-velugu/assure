class HomeController < ApplicationController

	before_filter :authenticate_user!, :except => [ :welcome ]

	def index
		@user = current_user
		if @user.profile.birthday.presence
			@birthday = @user.profile.birthday.strftime("%B %e, %Y")
		end
		@authentications = current_user.authentications if current_user

		respond_to do |format|
			format.js {}
			format.html { render :index }
		end 
	end

	def welcome
		render :layout => 'dummy'
	end

end