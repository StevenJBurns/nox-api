class ProductSerializer < ActiveModel::Serializer
  attributes :id, :product_type, :design, :gender, :price, :stock_quantity, :front_img, :back_img
end
