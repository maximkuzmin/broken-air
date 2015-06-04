class Release < ActiveRecord::Base
  validates_presence_of :name, :embed
end
