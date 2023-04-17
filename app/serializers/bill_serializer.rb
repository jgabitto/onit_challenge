class BillSerializer < ActiveModel::Serializer
  attributes :id, :appointment_id, :status, :due_date, :time_generated, :amount, :discount
end
