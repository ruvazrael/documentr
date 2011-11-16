class ApplicationController < ActionController::Base
  protect_from_forgery
  
rescue_from CanCan::AccessDenied do |exception|
  flash[:error] =  "Access denied."
redirect_to root_url
end
  def self.require_authentication()
    before_filter :authenticate
  end

  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user
  
  def authenticate() 
    if !current_user
      flash.alert = "You need to be logged in!"
      redirect_to login_path
    end
  end
  
end    
