class Prescription < ApplicationRecord
    has_many :appointment_prescriptions
    has_many :appointments, through: :appointment_prescriptions
end
