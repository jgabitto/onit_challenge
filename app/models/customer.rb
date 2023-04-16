class Customer < ApplicationRecord
    has_many :customer_pets
    has_many :pets, through: :customer_pets
end
