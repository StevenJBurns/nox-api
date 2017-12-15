class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :is_admin, :can_contact, :uid, :provider, :name
end
