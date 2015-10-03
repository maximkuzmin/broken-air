class Gig < ActiveRecord::Base
  has_attached_file :poster, styles: { medium: "2000x2000>" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/

end
