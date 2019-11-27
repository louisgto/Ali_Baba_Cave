class AddCoordinatesToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :latitude, :float
    add_column :pieces, :longitude, :float
  end
end
