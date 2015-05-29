class AddAttachmentVideoPosterToFrontpages < ActiveRecord::Migration
  def self.up
    change_table :frontpages do |t|
      t.attachment :video_poster
    end
  end

  def self.down
    remove_attachment :frontpages, :video_poster
  end
end
