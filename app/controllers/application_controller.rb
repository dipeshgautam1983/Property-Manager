class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_user
  	#cur_user = nil
  	#if session[:user_id] != nil
  	SystemUser.where(id: session[:user_id]).first
    #end
    #return cur_user
 end
 def admin
    return "PropertyManager"
 end
 def resident
    return "Tenant"
 end
 
 def maintenance
    return "Agent"
 end

 def session_home
  session[:session_home]
 end
  helper_method :current_user
  helper_method :session_home
  helper_method :admin
  helper_method :resident
  helper_method :maintenance
end
