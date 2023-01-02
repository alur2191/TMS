class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :truck_number
      t.string :truck_type
      t.string :license_plate
      t.string :plate_expiry
      t.string :inspection_expiration

      t.timestamps
    end
  end
end
