class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :event_link
      t.string :tickets_link
      t.string :event_name
      t.string :tickets_name
      t.string :event_place
      t.date :event_date

      t.timestamps null: false
    end
  end
end
