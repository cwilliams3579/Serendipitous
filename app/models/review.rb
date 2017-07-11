class Review < ApplicationRecord
  validates :rating, presence: true
  validates :comment, presence: true, length: { in: 5..400 }
  belongs_to :user
  belongs_to :product
end
