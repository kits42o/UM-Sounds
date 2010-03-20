class AboutsController < ApplicationController
  layout 'admin'
  def index
    @abouts = About.all
  end
  
  def show
    @about = About.find(params[:id])
  end
  
  def new
    @about = About.new
  end
  
  def create
    @about = About.new(params[:about])
    if @about.save
      flash[:notice] = "Successfully created about."
      redirect_to :controller => "admin"
    else
      render :action => 'new'
    end
  end
  
  def edit
    @about = About.find(params[:id])
  end
  
  def update
    @about = About.find(params[:id])
    if @about.update_attributes(params[:about])
      flash[:notice] = "Successfully updated about."
      redirect_to :controller => "admin"
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @about = About.find(params[:id])
    @about.destroy
    flash[:notice] = "Successfully destroyed about."
    redirect_to :controller => "admin"
  end
end
