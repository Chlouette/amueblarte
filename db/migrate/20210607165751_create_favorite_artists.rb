class CreateFavoriteArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_artists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
