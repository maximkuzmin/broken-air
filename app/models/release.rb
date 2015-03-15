class Release < ActiveRecord::Base
	validates :name, :presence => :true
	validates :embed, :presence => :true
end
