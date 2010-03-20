class SitesettingsController < ApplicationController
  layout 'admin'
  
 
 
  def new
    @sitesetting = Sitesetting.new
  end
  
  def create
    @sitesetting = Sitesetting.new(params[:sitesetting])
    if @sitesetting.save
      flash[:notice] = "Successfully created sites settings."
      redirect_to :controller => "sitesettings", :action => "edit", :id => "1"
    else
      render :new
    end
  end
  
  def edit
    @sitesetting = Sitesetting.find(params[:id])
  end
  
  def update
    @sitesetting = Sitesetting.find(params[:id])
    if @sitesetting.update_attributes(params[:sitesetting])
      flash[:notice] = "Successfully updated site settings."
      redirect_to :controller => "sitesettings", :action => "edit", :id => "1"
    else
      render :edit
    end
  end
  
  def destroy
    @sitesetting = Sitesetting.find(params[:id])
    @sitesetting.destroy
    flash[:notice] = "Successfully destroyed site settings."
    redirect_to sitesettings_url
  end
end
