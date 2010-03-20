class AddPriceToTrack < ActiveRecord::Migration
  def self.up
    add_column :tracks, :price, :integer
  end

  def self.down
    remove_column :tracks, :price
  end
end
