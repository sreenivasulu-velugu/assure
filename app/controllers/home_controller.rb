class HomeController < ApplicationController

	def index
	end

	def welcome
		render :layout => 'dummy'
	end

end