class Blog < ActiveRecord::Base
  attr_accessible :title, :body, :date
end
