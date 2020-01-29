class Post < ApplicationRecord # :nodoc:
  # association
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :likes_users, through: :likes, source: :user

  # validation
  validates :content, presence: true

  def find_like(user)
    self.likes.where( user_id: user.id ).first
  end
end
