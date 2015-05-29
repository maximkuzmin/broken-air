class AddAttachmentVideoBackgroundToFrontpages < ActiveRecord::Migration
  def self.up
    change_table :frontpages do |t|
      t.attachment :video_background
    end
  end

  def self.down
    remove_attachment :frontpages, :video_background
  end
end
