class ChangeDatatypeGenreOfItems < ActiveRecord::Migration[5.2]
  def change
  	  	change_column :items, :genre, :string
  end
end
