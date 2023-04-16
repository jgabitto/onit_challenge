class AppointmentPrescription < ApplicationRecord
  belongs_to :appointment
  belongs_to :prescription
end
