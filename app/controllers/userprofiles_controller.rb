class UserprofilesController < ApplicationController
  def show
    @userprofile = current_user.userprofile
  end
  
  def new
    @userprofile = current_user.build_userprofile
    render :layout => 'profile'
  end
  
  def create
    @userprofile = current_user.build_userprofile(params[:userprofile])
    if @userprofile.save
      notice = "Successfully set your profile."
      redirect_to welcome_url
    else
      render :new
    end
  end
  
  def edit
    @userprofile = current_user.userprofile
  end
  
  def update
    @userprofile = current_user.userprofile
    if @userprofile.update_attributes(params[:userprofile])
      notice = "Successfully updated your profile."
      redirect_to @userprofile
    else
      render :edit
    end
  end
  
  def destroy
    @userprofile = current_user.userprofile
    @userprofile.destroy
    notice = "Successfully destroyed user profile."
    redirect_to root_url
  end
end
