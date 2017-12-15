class RemoveOauthExpiresAtFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :oauth_expires_at, :datetime
  end
end
