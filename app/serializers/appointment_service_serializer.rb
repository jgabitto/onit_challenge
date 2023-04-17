class AppointmentServiceSerializer < ActiveModel::Serializer
  attributes :id, :appointment_id, :service_id, :start_time, :end_time, :notes
end
