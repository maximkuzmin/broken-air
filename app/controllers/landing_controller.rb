class LandingController < ApplicationController
  def welcome
  	@youtube = YoutubeEmbed.where(:active => true).last || YoutubeEmbed.last
  	@release = Release.where(:active => true).last || Release.last
  	@frontpage = Frontpage.where(:active => true).last || Frontpage.last
  end
end
