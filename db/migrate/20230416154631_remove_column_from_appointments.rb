class RemoveColumnFromAppointments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :appointments, :bill, null: false, foreign_key: true
  end
end
