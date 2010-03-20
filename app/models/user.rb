class User < ActiveRecord::Base
  attr_accessible :username, :email, :photo, :password, :password_confirmation
  
  # Authlogic
  acts_as_authentic

  # Validation Stuff
  validates_uniqueness_of :email, :on => :create, :message => "is already in use, please choose another email."
  validates_uniqueness_of :username, :on => :create, :message => "is already in use, please choose another username."
  validates_presence_of :username, :on => :create, :message => "can't be blank"
  validates_presence_of :email, :on => :create, :message => "can't be blank"
  
  # Paperclip Stuff
  has_attached_file :photo, :styles => { :thumbnail => "150x150>",
                                         :medium => "300x300>",
                                         :large  => "500x500>" },
                    :url  => "/assets/producers/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/producers/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 1.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/pjpeg', 'image/jpg', 'image/png', 'image/gif']
  
  # Associations
  has_many :tracks, :dependent => :destroy
  has_one :userprofile, :dependent => :destroy
end
