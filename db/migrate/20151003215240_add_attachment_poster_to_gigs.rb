class AddAttachmentPosterToGigs < ActiveRecord::Migration
  def self.up
    change_table :gigs do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :gigs, :poster
  end
end
