class ProfileController < ApplicationController
	
	def show
		profile_info_variables
	end

	def public
		profile_info_variables
		render :action => 'show'
	end

	def edit
		@user = current_user
		@profile = @user.profile
	end

	def update
		@user = current_user
		user_details = params[:profile].delete(:user)
		if @user.profile.update_attributes params[:profile] and @user.update_attributes user_details
			redirect_to home_path
			# respond_to do |format|
			# 	format.html {
			# 		redirect_to home_path
			# 	}
			# end
		end
	end

	def profile_info_variables
		@user = params[:uid].presence ? User.find(params[:uid]): current_user
	end
end