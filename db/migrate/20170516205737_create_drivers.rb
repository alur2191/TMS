class CreateDrivers < ActiveRecord::Migration[5.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :driver_type
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
