class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :photo
      t.integer :genre
      t.integer :category
      t.text :brand
      t.integer :season

      t.timestamps
    end
  end
end
