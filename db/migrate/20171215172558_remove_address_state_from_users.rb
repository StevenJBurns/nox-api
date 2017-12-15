class RemoveAddressStateFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :address_state, :string
  end
end
