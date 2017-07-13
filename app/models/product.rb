class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy

  # has_many :categories, dependent: :destroy
  # has_many :product_categories
  # has_many :categories, through: :product_categories
  validates :image, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
