class ChangeArtworkShares2 < ActiveRecord::Migration[7.0]
  def change
    remove_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :viewer_id 
  end
end
