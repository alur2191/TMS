class CreateLoadboards < ActiveRecord::Migration[5.1]
  def change
    create_table :loadboards do |t|
      t.string :company
      t.string :dispatcher
      t.string :driver
      t.string :truck
      t.string :load_type
      t.string :trailer

      t.timestamps
    end
  end
end
