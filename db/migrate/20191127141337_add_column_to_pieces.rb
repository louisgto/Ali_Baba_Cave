class AddColumnToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :sold, :boolean, default: false
  end
end
