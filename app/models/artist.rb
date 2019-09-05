class Artist < ApplicationRecord
    has_many :charts, dependent: :destroy
    has_many :songs, through: :charts
end
