class Castle < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_one_attached :photo
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
end
