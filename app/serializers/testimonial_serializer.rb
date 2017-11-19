class TestimonialSerializer < ActiveModel::Serializer
  attributes :id, :client_name, :body_text, :image_url
  has_one :service
end
