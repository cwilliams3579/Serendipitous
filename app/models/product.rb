class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  belongs_to :category
  has_many :reviews, dependent: :destroy
  has_many :orders, dependent: :destroy

  # validates :image, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
