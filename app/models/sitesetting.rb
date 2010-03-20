class Sitesetting < ActiveRecord::Base
  attr_accessible :support_email, :um_staff_email, :um_paypal, :sales_percent
end
