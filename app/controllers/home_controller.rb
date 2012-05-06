class HomeController < ApplicationController

	before_filter :authenticate_user!

	def index
		@user = current_user
		if @user.profile.birthday.presence
			@birthday = @user.profile.birthday.strftime("%B %e, %Y")
		end
	end

	def welcome
		render :layout => 'dummy'
	end

end