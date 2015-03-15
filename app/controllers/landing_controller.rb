class LandingController < ApplicationController
  def welcome
  	@youtube = YoutubeEmbed.where(:active => true).last || YoutubeEmbed.last
  	@release = Release.where(:active => true).last || Release.last
  end
end
