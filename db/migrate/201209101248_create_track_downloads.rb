class CreateTrackDownloads < ActiveRecord::Migration
  def self.up
    create_table :siimby_track_downloads, :force => true do |t|
      t.string :document_name
      t.string :remote_ip
      t.string :ip_host
      t.string :comp_name
      t.timestamps
    end
  end

  def self.down
    drop_table :siimby_track_downloads
  end
end

