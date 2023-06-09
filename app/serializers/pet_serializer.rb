class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :birth_date, :gender, :data

  belongs_to :species
  belongs_to :breed
  has_many :customers
end
