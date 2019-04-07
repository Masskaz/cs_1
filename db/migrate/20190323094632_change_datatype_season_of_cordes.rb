class ChangeDatatypeSeasonOfCordes < ActiveRecord::Migration[5.2]
  def change
  	  	change_column :cordes, :season, :string
  end
end
