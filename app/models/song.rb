class Song < ApplicationRecord
  belongs_to :chart
  has_one :preformer
end
