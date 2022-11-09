class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = (0..5)
  validates :rating, inclusion: { in: RATING }
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  # validates :address, presence: true

end
