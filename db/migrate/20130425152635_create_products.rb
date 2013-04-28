class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :price, :price, :decimal, :precision => 8, :scale => 2
      t.string :condition
      t.boolean :published
      t.references :store

      t.timestamps
    end
    add_index :products, :store_id
  end
end
