class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.text :name
      t.text :specialty

      t.timestamps
    end
  end
end
