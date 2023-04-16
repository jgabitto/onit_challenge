class RemoveColumnFromPets < ActiveRecord::Migration[7.0]
  def change
    remove_reference :pets, :customer
  end
end
