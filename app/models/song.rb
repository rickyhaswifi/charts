class Song < ApplicationRecord
  belongs_to :artist, optional: true
  has_one :artist

  def spotify_link
    spotify_link = self.spotify.slice! 'https://open.spotify.com/track/'
  end
end
