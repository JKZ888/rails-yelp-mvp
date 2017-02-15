class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  # validates_inclusion_of :rating, in: 0..5
  # validates_numericality_of :rating
  validates :rating, numericality: true, inclusion: {in: 0..5}
end
# A review must have a content and a rating.
# The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all reviews should be destroyed as well.
