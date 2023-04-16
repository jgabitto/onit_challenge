class Pet < ApplicationRecord
  belongs_to :customer
  belongs_to :species
  belongs_to :breed

  has_many :pet_customers
  has_many :customers, :through => :pet_customers
end
