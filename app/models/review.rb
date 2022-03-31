class Review < ApplicationRecord
  belongs_to :castle

  validates :comment, presence: true
  validates :rating, presence: true
  # validates :rating, numericality: { less_than_or_equal_to: 5, only_integer: true }
end
