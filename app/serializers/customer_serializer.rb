class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :phone, :registration_date, :status, :notification_type

  has_many :pets
end
