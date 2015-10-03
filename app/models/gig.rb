class Gig < ActiveRecord::Base
  attr_accessor :actual
  has_attached_file :poster, styles: { medium: "2000x2000>" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
  validates_presence_of :poster

  private
  def self.actual
    Gig.all.select{|g| g.event_date > Date.today }.sort_by{|g| g.event_date}.first
  end
end
