class AddColumnToBill < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :discount, :numeric
  end
end
