class Gig < ActiveRecord::Base
  has_attached_file :poster, styles: { medium: "2000x2000>" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
  validates_presence_of :poster

  scope :actual, -> { where("event_date > :date", :date =>  Date.today).order("event_date ASC").first }
end
