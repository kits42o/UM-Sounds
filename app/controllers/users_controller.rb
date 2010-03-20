class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      notice "Registration successful!"
      redirect_to new_userprofile_path
    else
      render :new
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      notice "Successfully updated profile."
      redirect_to welcome_url
    else
      render :edit
    end
  end
  
  def destroy
    @user = current_user
    @user.destroy
    notice "Successfully deleted profile."
    redirect_to root_url
  end
end
