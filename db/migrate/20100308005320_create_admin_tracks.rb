class CreateAdminTracks < ActiveRecord::Migration
  def self.up
    create_table :admin_tracks do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_tracks
  end
end
