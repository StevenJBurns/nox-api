class UserSerializer < ActiveModel::Serializer
  attributes :id, :last_name, :first_name, :address_street_1, :address_street_2, :address_city, :address_state, :address_zip, :phone, :email, :is_admin, :can_contact, :password, :uid, :provider, :oauth_token, :oauth_expires_at, :authentication_token, :name, :picture_url
end
