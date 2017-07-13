class Review < ApplicationRecord
  validates :rating, :comment, presence: true
  # validates :comment, presence: true
  belongs_to :user
  belongs_to :product
end
