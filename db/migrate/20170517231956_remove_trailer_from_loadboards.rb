class RemoveTrailerFromLoadboards < ActiveRecord::Migration[5.1]
  def change
    remove_column :loadboards, :trailer, :string
    add_column :loadboards, :trailer_id, :integer
  end
end
