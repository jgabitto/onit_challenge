class CreateAppointmentPrescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_prescriptions do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :prescription, null: false, foreign_key: true

      t.timestamps
    end
  end
end
