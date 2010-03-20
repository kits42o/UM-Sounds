class AddIsfeaturedToStudios < ActiveRecord::Migration
  def self.up
    add_column :studios, :isfeatured, :boolean
  end

  def self.down
    remove_column :studios, :isfeatured
  end
end
