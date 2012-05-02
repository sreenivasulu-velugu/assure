class HomeController < ApplicationController

	before_filter :authenticate_user!

	def index
	end

	def welcome
		render :layout => 'dummy'
	end

end