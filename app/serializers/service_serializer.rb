class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :notes, :cost
end
