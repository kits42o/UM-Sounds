class TracksController < ApplicationController
  def index
    @tracks = current_user.tracks
  end
  
  def show
    @track = current_user.tracks.find(params[:id])
  end
  
  def new
    @track = current_user.tracks.new
  end
  
  def create
    @track = current_user.tracks.new(params[:track])
    if @track.save
      flash[:notice] = "Successfully added track."
      redirect_to @track
    else
      render :new
    end
  end
  
  def edit
    @track = current_user.tracks.find(params[:id])
  end
  
  def update
    @track = current_user.tracks.find(params[:id])
    if @track.update_attributes(params[:track])
      flash[:notice] = "Successfully updated track."
      
      redirect_to @track
    else
      render :edit
    end
  end
  
  def destroy
    @track = current_user.tracks.find(params[:id])
    @track.destroy
    flash[:notice] = "Successfully destroyed track."
    redirect_to tracks_url
  end
end
