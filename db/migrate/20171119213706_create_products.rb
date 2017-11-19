class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_type
      t.string :design
      t.string :gender
      t.money :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
