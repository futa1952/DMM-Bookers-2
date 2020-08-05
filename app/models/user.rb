class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books, dependent: :destroy
  has_many :post_images, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_posts, through: :likes, source: :post

  validates :name, presence: true, length: { in: 2..20 }
  validates :introduction, length: { maximum: 50 }

  attachment :profile_image
end
