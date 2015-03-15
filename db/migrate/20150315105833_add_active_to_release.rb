class AddActiveToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :active, :boolean
  end
end
