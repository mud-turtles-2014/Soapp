class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url, :notice => ""
  end

  def destroy
    # session[:user_id] = nil
    session.clear
    redirect_to root_url, :notice => ""
  end

end
