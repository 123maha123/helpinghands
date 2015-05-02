class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user,:current_user_type,:categories_list

  def current_user
    # Note: we want to use "find_by_id" because it's OK to return a nil.
    # If we were to use User.find, it would throw an exception if the user can't be found.
    if session[:user_id] && (session[:user_type]=="donor" || session[:user_type]=="admin") && Donor.exists?(user_id:[session[:user_id]])
      @current_user ||= Donor.find_by user_id: session[:user_id]
    elsif session[:user_id] && session[:user_type]=="charity" && Charity.exists?(user_id:[session[:user_id]])
      @current_user ||= Charity.find_by user_id: session[:user_id]
    end
  end
  
  def current_user_type
    @current_user_type=session[:user_type]
  end
end