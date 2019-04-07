class ChangeDatatypeCategoryOfItems < ActiveRecord::Migration[5.2]
  def change
  	  	change_column :items, :category, :string
  end
end
