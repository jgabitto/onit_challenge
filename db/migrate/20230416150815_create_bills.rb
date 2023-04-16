class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.references :appointment, null: false, foreign_key: true
      t.text :status
      t.date :due_date
      t.datetime :time_generated
      t.numeric :amount

      t.timestamps
    end
  end
end
