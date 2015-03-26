class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user,:current_user_type

  def current_user
    # Note: we want to use "find_by_id" because it's OK to return a nil.
    # If we were to use User.find, it would throw an exception if the user can't be found.
    if session[:user_id] && (session[:user_type]=="donor" || session[:user_type]=="admin")
      @current_user ||= Donor.where("user_id=?",session[:user_id]) 
    elsif session[:user_id] && session[:user_type]=="charity"
      @current_user ||= Charity.where("user_id=?",session[:user_id]) 
    end
  end
  
  def current_user_type
    @current_user_type=session[:user_type]
  end
end
