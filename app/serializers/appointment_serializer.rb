class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :post_summary, :notes, :start_time, :end_time

  belongs_to :doctor
  belongs_to :pet
  has_one :bill
  has_many :prescriptions
  has_many :appointment_services
  has_many :services, through: :appointment_services
end
