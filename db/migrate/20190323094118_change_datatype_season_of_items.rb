class ChangeDatatypeSeasonOfItems < ActiveRecord::Migration[5.2]
  def change
  	  	change_column :items, :season, :string
  end
end
