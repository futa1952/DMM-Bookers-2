class Book < ApplicationRecord
  belongs_to :user, through: :favorites
  has_many :favorites
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }

  def favorited_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
