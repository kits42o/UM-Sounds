class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string :current_login_ip
      t.string :last_login_ip
      t.boolean :is_admin, :default => 0
      t.integer :profile_views
      t.boolean :is_featured
      t.timestamps
    end
  end
  
  def self.down
    drop_table :users
  end
end
