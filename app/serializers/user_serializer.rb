class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :current_cart
end
