class CreateAppointmentServices < ActiveRecord::Migration[7.0]
  def change
    create_table :appointment_services do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.text :notes

      t.timestamps
    end
  end
end
