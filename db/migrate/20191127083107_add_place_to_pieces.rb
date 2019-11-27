class AddPlaceToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :address, :string
  end
end
