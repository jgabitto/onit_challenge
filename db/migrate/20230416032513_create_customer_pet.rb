class CreateCustomerPet < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_pets do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
