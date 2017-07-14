class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :articles, dependent: :destroy
  has_many :sales, class_name: "Order", foreign_key: "seller_id"
  has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
  has_many :galleries, dependent: :destroy
  has_many :products, dependent: :destroy
  # has_many :categories, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    self.first_name + " " + self.last_name
  end
end
