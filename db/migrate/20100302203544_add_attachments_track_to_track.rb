class AddAttachmentsTrackToTrack < ActiveRecord::Migration
  def self.up
    add_column :tracks, :track_file_name, :string
    add_column :tracks, :track_content_type, :string
    add_column :tracks, :track_file_size, :integer
    add_column :tracks, :track_updated_at, :datetime
  end

  def self.down
    remove_column :tracks, :track_file_name
    remove_column :tracks, :track_content_type
    remove_column :tracks, :track_file_size
    remove_column :tracks, :track_updated_at
  end
end
