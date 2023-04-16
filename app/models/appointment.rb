class Appointment < ApplicationRecord
    belongs_to :pet
    belongs_to :doctor

    has_one :bill
    has_many :appointment_prescriptions
    has_many :prescriptions, through: :appointment_prescriptions
end
