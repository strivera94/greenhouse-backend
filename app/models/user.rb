class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: true
    # validates :email, :password, presence: true, on: :create

    has_many :carts
    has_many :product_instances, through: :carts

end
