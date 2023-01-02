class CreateTrailers < ActiveRecord::Migration[5.1]
  def change
    create_table :trailers do |t|
      t.string :trailer_number
      t.string :trailer_type
      t.string :license_plate
      t.string :plate_expiry
      t.string :inspection_expiration

      t.timestamps
    end
  end
end
