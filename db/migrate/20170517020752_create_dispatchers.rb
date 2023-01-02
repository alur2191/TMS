class CreateDispatchers < ActiveRecord::Migration[5.1]
  def change
    create_table :dispatchers do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
