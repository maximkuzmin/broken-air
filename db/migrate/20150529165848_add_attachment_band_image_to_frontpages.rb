class AddAttachmentBandImageToFrontpages < ActiveRecord::Migration
  def self.up
    change_table :frontpages do |t|
      t.attachment :band_image
    end
  end

  def self.down
    remove_attachment :frontpages, :band_image
  end
end
