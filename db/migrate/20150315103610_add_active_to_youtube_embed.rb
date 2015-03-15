class AddActiveToYoutubeEmbed < ActiveRecord::Migration
  def change
    add_column :youtube_embeds, :active, :boolean
  end
end
