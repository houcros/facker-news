class SessionsController < ApplicationController
  def create
    user = Googleuser.from_omniauth(env["omniauth.auth"])
    session[:googleuser_id] = user.id
    redirect_to root_path
  end

  def destroy
    session[:googleuser_id] = nil
    redirect_to root_path
  end
end
