class CartSerializer < ActiveModel::Serializer
  attributes :id, :completed
  has_one :user
end
