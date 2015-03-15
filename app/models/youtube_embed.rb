class YoutubeEmbed < ActiveRecord::Base
	validates :embed, :presence => :true
	validates :name, :presence => :true
	validates :description, :presence => :true
end
