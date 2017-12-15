class RemoveOauthTokenFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :oauth_token, :string
  end
end
