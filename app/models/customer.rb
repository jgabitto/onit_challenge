class Customer < ApplicationRecord
    has_many :pet_customers
    has_many :pets, :through => :pet_customers
end
