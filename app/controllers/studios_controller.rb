class StudiosController < ApplicationController
  layout 'admin'
  def new
    @studio = Studio.new
  end
  
  def create
    @studio = Studio.new(params[:studio])
    if @studio.save
      flash[:notice] = "Successfully added studio."
      redirect_to :controller => "admin"
    else
      render :new
    end
  end
  
  def edit
    @studio = Studio.find(params[:id])
  end
  
  def update
    @studio = Studio.find(params[:id])
    if @studio.update_attributes(params[:studio])
      flash[:notice] = "Successfully updated studio."
      redirect_to :controller => "admin"
    else
      render :edit
    end
  end
  
  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy
    flash[:notice] = "Successfully destroyed studio."
    redirect_to :controller => "admin"
  end
end
