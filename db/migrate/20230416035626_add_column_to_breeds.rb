class AddColumnToBreeds < ActiveRecord::Migration[7.0]
  def change
    add_column :breeds, :name, :text
  end
end
