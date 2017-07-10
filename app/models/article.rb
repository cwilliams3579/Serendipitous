class Article < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :image, presence: true
  validates :title, presence: true, length: { in: 3..22 }
  validates :description, presence: true, length: { in: 5..400 }
  belongs_to :user
end
