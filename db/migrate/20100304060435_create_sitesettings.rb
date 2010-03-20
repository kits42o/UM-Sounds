class CreateSitesettings < ActiveRecord::Migration
  def self.up
    create_table :sitesettings do |t|
      t.string :support_email
      t.string :um_staff_email
      t.string :um_paypal
      t.string :sales_percent
      t.timestamps
    end
  end
  
  def self.down
    drop_table :sitesettings
  end
end
