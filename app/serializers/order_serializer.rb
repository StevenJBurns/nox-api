class OrderSerializer < ActiveModel::Serializer
  attributes :id, :cart, :paid_on, :shipped_on, :shipping_address, :total
  has_one :user
end
