class CreateYoutubeEmbeds < ActiveRecord::Migration
  def change
    create_table :youtube_embeds do |t|
      t.string :embed
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
