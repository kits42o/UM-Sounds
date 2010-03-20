class BlogsController < ApplicationController
  layout 'admin'
  def index
    @blogs = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def new
    @blog = Blog.new
  end
  
  def create
    @blog = Blog.new(params[:blog])
    if @blog.save
      flash[:notice] = "Successfully created blog post."
      redirect_to @blog
    else
      render :new
    end
  end
  
  def edit
    @blog = Blog.find(params[:id])
  end
  
  def update
    @blog = Blog.find(params[:id])
    if @blog.update_attributes(params[:blog])
      flash[:notice] = "Successfully updated blog post."
      redirect_to @blog
    else
      render :edit
    end
  end
  
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    flash[:notice] = "Successfully destroyed blog post."
    redirect_to blogs_url
  end
end
