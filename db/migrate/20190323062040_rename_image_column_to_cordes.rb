class RenameImageColumnToCordes < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cordes, :image, :image_id
  end
end
