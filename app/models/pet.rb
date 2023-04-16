class Pet < ApplicationRecord
  belongs_to :species
  belongs_to :breed

  has_many :customer_pets
  has_many :customers, through: :customer_pets
end
