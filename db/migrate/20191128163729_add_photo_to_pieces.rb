class AddPhotoToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :photo, :string
  end
end
