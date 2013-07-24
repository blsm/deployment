class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :tittle
      t.references :artist
      t.references :genre
      t.date :creation_date

      t.timestamps
    end
    add_index :songs, :artist_id
    add_index :songs, :genre_id
  end
end
