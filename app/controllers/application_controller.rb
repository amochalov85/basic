class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    helper_method :user_signed_in?, :current_user
    
    def user_signed_in?
      !!session[:user_id]
    end
    
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
        redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
    end

    def authenticate_user!
      redirect_to login_path unless user_signed_in?
    end
end