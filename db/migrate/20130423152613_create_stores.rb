class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :user
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
