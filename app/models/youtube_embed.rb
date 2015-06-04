class YoutubeEmbed < ActiveRecord::Base
  validates_presence_of :embed, :name, :description
end
