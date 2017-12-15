class AddShippingAddressToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :shipping_address, :string, limit: 1024
  end
end
