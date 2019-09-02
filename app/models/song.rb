class Song < ApplicationRecord
  belongs_to :chart
  has_many :artists
end
