class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.text :name
      t.text :address
      t.text :email
      t.text :phone
      t.date :registration_date
      t.text :status
      t.text :notification_type

      t.timestamps
    end
  end
end
