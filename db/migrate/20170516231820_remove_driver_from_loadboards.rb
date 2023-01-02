class RemoveDriverFromLoadboards < ActiveRecord::Migration[5.1]
  def change
    remove_column :loadboards, :driver, :string
    add_column :loadboards, :driver_id, :integer
  end
end
