class AddColumnToSpecies < ActiveRecord::Migration[7.0]
  def change
    add_column :species, :name, :text
  end
end
