class HomeController < ApplicationController

	# before_filter :authenticate_user!

	def index
		@user = current_user
	end

	def welcome
		render :layout => 'dummy'
	end

end