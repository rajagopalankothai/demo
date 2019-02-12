class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :category
      t.decimal :price
      t.string :brand
      t.decimal :rate

      t.timestamps
    end
  end
end
