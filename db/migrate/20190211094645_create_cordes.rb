class CreateCordes < ActiveRecord::Migration[5.2]
  def change
    create_table :cordes do |t|
      t.integer :item_id
      t.text :corde_name
      t.integer :image
      t.integer :season

      t.timestamps
    end
  end
end
