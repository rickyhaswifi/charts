class AddSpotifyToSongs < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :spotify, :string
  end
end
