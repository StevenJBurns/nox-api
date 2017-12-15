class RemovePictureUrlFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :picture_url, :string
  end
end
