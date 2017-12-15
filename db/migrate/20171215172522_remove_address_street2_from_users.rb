class RemoveAddressStreet2FromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :address_street_2, :string
  end
end
