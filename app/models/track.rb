class Track < ActiveRecord::Base
  attr_accessible :name, :description, :track
  
  # Paperclip Stuff
  has_attached_file :track,
                    :url  => "/assets/producers/:id/tracks/:basename.:extension",
                    :path => ":rails_root/public/assets/producers/:id/tracks/:basename.:extension"

  validates_attachment_presence :track
  validates_attachment_size :track, :less_than => 10.megabytes
  #validates_attachment_content_type :track, :content_type => ['audio/mpeg']
end
