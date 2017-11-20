class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :address_street_1
      t.string :address_street_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :phone
      t.string :email
      t.boolean :is_admin
      t.boolean :can_contact
      t.string :password
      t.string :uid
      t.string :provider
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.string :authentication_token
      t.string :name
      t.string :picture_url

      t.timestamps
    end
  end
end
