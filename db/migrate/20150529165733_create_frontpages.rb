class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|
      t.string :name
      t.boolean :active

      t.timestamps null: false
    end
  end
end
