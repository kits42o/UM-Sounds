class Userprofile < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :city, :state, :zip_code, :phone_number, :facebook, :myspace, :twitter, :paypal

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  validates_presence_of :first_name, :on => :create, :message => "can't be blank"
  validates_presence_of :last_name, :on => :create, :message => "can't be blank"
  validates_presence_of :city, :on => :create, :message => "can't be blank"
  validates_presence_of :state, :on => :create, :message => "can't be blank"
  validates_presence_of :zip_code, :on => :create, :message => "code can't be blank"
  validates_presence_of :phone_number, :on => :create, :message => "number can't be blank"
  validates_presence_of :paypal, :on => :create, :message => "address can't be blank"
end
