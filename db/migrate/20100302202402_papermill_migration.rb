class PapermillMigration < ActiveRecord::Migration
  def self.up
    create_table :papermill_assets do |t|
    
      # Paperclip fields (required)
      t.string   :file_file_name
      t.string   :file_content_type
      t.integer  :file_file_size
      
      # Papermill fields (required)
      t.integer  :position          # sets are ordered by position
      
      t.belongs_to :assetable, :polymorphic => true
      
      t.string   :assetable_key
      t.string   :type              # STI
      t.string   :title             # filename not transformed, without file extension, for your own use
      
      # Example additionals fields (configure :mass_editable_fields/:editable_fields accordingly)
      t.string   :alt
      t.string   :copyright         # Content can be used to add copyright on thumbnails
      t.text     :description
      t.timestamps
    end
    
    change_table :papermill_assets do |t|
      t.index [:assetable_id, :assetable_type, :assetable_key, :position], { :name => "papermill_index" }
      t.index [:assetable_key, :position]  # for non assetable assets
    end
  end
  
  def self.down
    drop_table :papermill_assets
  end
end
