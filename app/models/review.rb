class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5).to_i
  validates :rating, inclusion: { in: RATING }
end
