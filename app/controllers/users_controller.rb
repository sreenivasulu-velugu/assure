class UsersController < ApplicationController

	respond_to :html, :json

	def show
	end

	def index
	end

	def update
		@user = current_user
		if params[:user]
			@user.update_attributes params[:user]
			respond_with @user
		end
	end

end