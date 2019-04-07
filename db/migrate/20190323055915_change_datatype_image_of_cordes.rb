class ChangeDatatypeImageOfCordes < ActiveRecord::Migration[5.2]
  def change
  	change_column :cordes, :image, :string
  end
end
