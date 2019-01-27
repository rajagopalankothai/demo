class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :brand
      t.string :category
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
