class CreateArtPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :art_pieces do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
