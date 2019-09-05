class Chart < ApplicationRecord
    has_many :artists, dependent: :destroy
end
