class CreateBreeds < ActiveRecord::Migration[7.0]
  def change
    create_table :breeds do |t|

      t.timestamps
    end
  end
end
