class CreateUserprofiles < ActiveRecord::Migration
  def self.up
    create_table :userprofiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :facebook
      t.string :myspace
      t.string :twitter
      t.string :paypal
      t.integer :user_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :userprofiles
  end
end
