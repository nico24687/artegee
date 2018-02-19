class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :description
      t.integer :width
      t.integer :height
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
