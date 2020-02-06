class Cart < ApplicationRecord
  belongs_to :user
  has_many :product_instances
  has_many :products, through: :product_instances
end
