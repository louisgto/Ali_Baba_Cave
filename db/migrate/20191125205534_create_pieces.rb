class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :artist
      t.integer :year
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
