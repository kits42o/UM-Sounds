class AdminTracksController < ApplicationController
  layout 'admin'
  
  def index
    @tracks = Track.all
	  @users = User.all
  end
  
  def show
    @track = tracks.find(params[:id])
  end
  
  def new
    @track = current_user.tracks.new
  end
  
  def create
    @track = current_user.tracks.new(params[:track])
    if @track.save
      flash[:notice] = "Successfully added track."
      redirect_to :controller => 'admin_tracks'
    else
      render :new
    end
  end
  
  def edit
    @track = Track.find(params[:id])
  end
  
  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(params[:track])
      flash[:notice] = "Successfully updated track."
      
      redirect_to :controller => 'admin_tracks'
    else
      render :edit
    end
  end
  
  def destroy
    @track = current_user.tracks.find(params[:id])
    @track.destroy
    flash[:notice] = "Successfully destroyed track."
  end

end
