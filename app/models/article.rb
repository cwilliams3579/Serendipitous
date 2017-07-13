class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :title, presence: true, length: { in: 3..50 }
  validates :description, presence: true, length: { in: 10..400
  belongs_to :user
end
