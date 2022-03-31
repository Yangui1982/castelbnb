class Review < ApplicationRecord
  belongs_to :castle

  # validates :rating, numericality: { in: 1..5 }
end
