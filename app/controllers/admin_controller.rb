class AdminController < ApplicationController
	layout 'admin'

	def index
	
	end
	
	def updateproducer
		@producer = User.find(params[:id])
		if @producer.update_attributes(params[:user])
		  flash[:notice] = "Successfully updated producer"
		  
		  redirect_to :controller => 'admin', :action => 'producers'
		else
		  render :edit
		end
	end
	
	def updateproducermain
		@producer = Userprofile.find(params[:id])
		if @producer.update_attributes(params[:userprofile])
		  flash[:notice] = "Successfully updated producer"
		  
		  redirect_to :controller => 'admin', :action => 'producers'
		else
		  render :edit
		end
	end
	
	def producers
		@producers = User.all
	end
	
	def editproducer
		@producers = User.find(params[:id])
	end
	def edittracks
	 @producer = User.find(params[:id])
	end
	def editproducermain
		@producers = Userprofile.find(params[:id])
	end

	def showproducer
		@producer = User.find(params[:id])
		@producers = Userprofile.find(params[:id])
	end
	
end
