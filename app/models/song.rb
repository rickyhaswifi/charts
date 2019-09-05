class Song < ApplicationRecord
  has_many :charts, dependent: :destroy
  has_many :artist, through: :charts

  def spotify_link
    spotify_link = self.spotify.slice! 'https://open.spotify.com/track/'
  end
end
