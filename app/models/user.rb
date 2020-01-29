class User < ApplicationRecord # :nodoc:
  has_many :posts
  has_many :likes, dependent: :destroy
  has_many :likes_posts, through: :likes, source: :post
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
