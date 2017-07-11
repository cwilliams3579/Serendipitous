class Review < ApplicationRecord
  validates :rating, presence: true
  validates :comment, presence: true, length: { in: 5..400 }
  has_many :reviews, dependent: :destroy
  belongs_to :user
  belongs_to :product
end
