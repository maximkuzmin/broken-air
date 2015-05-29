class Frontpage < ActiveRecord::Base
  attr_accessor :band_image
  has_attached_file :band_image, :styles => { :normal => "1920x1920>", :thumbnail => '50x50' }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :band_image, :content_type => /\Aimage\/.*\Z/

  attr_accessor :delete_band_image
  before_validation { self.band_image.clear if self.delete_band_image == '1' }
end
