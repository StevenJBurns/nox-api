class AddColumnsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :front_img, :string
    add_column :products, :back_img, :string
  end
end
