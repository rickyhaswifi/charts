class Song < ApplicationRecord
  belongs_to :chart, optional: true
  has_one :preformer

  def spotify_link
    spotify_link = self.spotify.slice! 'https://open.spotify.com/track/'
  end
end
