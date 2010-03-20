class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      notice "Successfully logged in!"
      redirect_to welcome_url
    else
      render :new
    end
  end
  
  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy
    notice "Successfully logged out."
    redirect_to root_url
  end
end
