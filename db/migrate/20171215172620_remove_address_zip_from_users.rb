class RemoveAddressZipFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :address_zip, :string
  end
end
