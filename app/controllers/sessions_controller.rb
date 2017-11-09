class SessionsController < ApplicationController
  def new
  end

  def create
    user = SystemUser.find_by_email(params[:email])
    #msg = " Hello " 
    #msg << user.firstname
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:session_home] = root_url
      if user.type == admin
        #redirect_to system_users_url#, notice: 'Logged in!'# << msg <<"!"
        session[:session_home] = property_managers_home_url
        redirect_to property_managers_home_url#, notice: 'Logged in!'# << msg <<"!"
      elsif user.type == resident
        session[:session_home] = tenants_home_url
        redirect_to tenants_home_url
      elsif user.type == maintenance
        session[:session_home] = agents_home_url
        redirect_to agents_home_url
      end
    else
      #redirect_to property_managers_url, notice: 'Logged in!' << msg
      #redirect_to root_url, notice: 'Could not Logged in!'
      #redirect_to login_url#, notice:'Could not logged in!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url#, notice: 'Logged out!'
  end

end
