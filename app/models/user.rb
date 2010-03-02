class User < ActiveRecord::Base
  attr_accessible :username, :email, :photo, :password, :password_confirmation, :firstname, :lastname, :city, :state, :zip, :phone, :facebook, :twitter, :myspace, :paypal
  
  # Authlogic
  acts_as_authentic

  # Validation Stuff
  validates_presence_of :email, :on => :create, :message => "can't be blank"
  validates_presence_of :firstname, :on => :create, :message => "can't be blank"
  validates_presence_of :lastname, :on => :create, :message => "can't be blank"
  validates_presence_of :city, :on => :create, :message => "can't be blank"
  validates_presence_of :state, :on => :create, :message => "can't be blank"
  validates_presence_of :zip, :on => :create, :message => "code can't be blank"
  validates_presence_of :phone, :on => :create, :message => "number can't be blank"
  validates_presence_of :paypal, :on => :create, :message => "address can't be blank"
  
  # Paperclip Stuff
  has_attached_file :photo, :styles => { :thumbnail => "100x100>",
                                         :medium => "300x300>",
                                         :large  => "500x500>" },
                    :url  => "/assets/producers/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/producers/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 1.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg', 'image/png', 'image/gif']
  
  # Associations
  has_many :tracks, :class_name => "track", :foreign_key => "reference_id"
end
