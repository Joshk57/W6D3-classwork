class ChangeArtworks < ActiveRecord::Migration[7.0]
  def change
    remove_index :artworks, :artist_id
    add_index :artworks, :image_url, unique: true
    remove_index :artwork_shares, :artwork_id
    remove_index :artwork_shares, :viewer_id
    add_index :artwork_shares, :artwork_id, unique: true
    add_index :artwork_shares, :viewer_id, unique: true
  end
end
