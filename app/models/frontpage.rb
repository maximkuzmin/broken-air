class Frontpage < ActiveRecord::Base
  attr_accessor :band_image 
  attr_accessor :delete_band_image
  before_validation { self.band_image.clear if self.delete_band_image == '1' }
  has_attached_file :band_image, :styles => { :normal => "1920x1920>", :thumbnail => '50x50' }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :band_image, :content_type => /\Aimage\/.*\Z/

  attr_accessor :video_poster
  attr_accessor :delete_video_poster
  has_attached_file :video_poster, :styles => { :wide => "1920x1920>", :thumbnail => '50x50' }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :video_poster, :content_type => /\Aimage\/.*\Z/
  before_validation { self.video_poster.clear if self.delete_video_poster == '1' }

  attr_accessor :video_background
  attr_accessor :delete_video_background
    has_attached_file :video_background, :styles => {
    :normal => { :geometry => "1920x1020!", :format => 'mp4' },
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:transcoder]

end