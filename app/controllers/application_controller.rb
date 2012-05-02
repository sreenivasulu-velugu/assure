class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :correct_user?
  #before_filter :set_user_home
  

  private
    def set_user_home
    if current_user 
      @user = User.find(current_user.id)
      redirect_to @user
    else
      redirect_to root_url
    end
    end

     def current_user
         @current_user ||= User.find(session[:user_id]) if session[:user_id]
     end

     def user_signed_in?
       return true if current_user
     end

    def correct_user?
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end
    
    def current_page
      params[:page] || 1
    end
end
