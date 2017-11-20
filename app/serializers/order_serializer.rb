class OrderSerializer < ActiveModel::Serializer
  attributes :id, :cart, :paid_on, :shipped_on
  has_one :user
end
