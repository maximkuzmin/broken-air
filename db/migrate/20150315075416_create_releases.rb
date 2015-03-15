class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.string :embed

      t.timestamps null: false
    end
  end
end
