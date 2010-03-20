class MainController < ApplicationController


  def index
    @blogs = Blog.all
  end
  
  def beatfactory
    @producers = User.all
	@tracks = params[:search] ? Track.all(:conditions => ['name LIKE ?', "%#{params[:search]}%"]) : Track.all
  end
  
  def studio
    @studios = Studio.all
  end
  
  def producers
    @producers = User.all
  end
  
  def about
    @about = About.first
  end
  
  def faq
    @faqs = Faq.all  
  end
  
end
