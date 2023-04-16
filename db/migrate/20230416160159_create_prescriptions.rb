class CreatePrescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :prescriptions do |t|
      t.text :name
      t.text :dosage
      t.text :instructions
      t.datetime :prescribed_date
      t.date :refill_date

      t.timestamps
    end
  end
end
