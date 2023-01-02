class RemoveTruckFromLoadboards < ActiveRecord::Migration[5.1]
  def change
    remove_column :loadboards, :truck, :string
    add_column :loadboards, :truck_id, :integer
  end
end
