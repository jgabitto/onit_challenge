class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :pet, null: false, foreign_key: true
      t.text :post_summary
      t.text :notes
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
