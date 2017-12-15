class RemoveAddressStreet1FromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :address_street_1, :string
  end
end
