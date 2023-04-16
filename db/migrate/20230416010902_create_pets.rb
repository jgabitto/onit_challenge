class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.references :customer, null: false, foreign_key: true
      t.text :name
      t.references :species, null: false, foreign_key: true
      t.references :breed, null: false, foreign_key: true
      t.date :birth_date
      t.text :gender
      t.jsonb :data

      t.timestamps
    end
  end
end
