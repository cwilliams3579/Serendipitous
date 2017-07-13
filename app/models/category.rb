class Category < ApplicationRecord
  validates :name, presence: true, length: { in: 3..25 }
  # belongs_to :user
  has_many :products, dependent: :destroy
  has_many :article_categories
  has_many :articles, through: :article_categories
end
