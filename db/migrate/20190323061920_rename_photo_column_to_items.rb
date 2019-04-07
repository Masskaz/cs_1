class RenamePhotoColumnToItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :items, :photo, :photo_id
  end
end
