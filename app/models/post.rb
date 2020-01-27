class Post < ApplicationRecord # :nodoc:
  # association
  belongs_to :user

  # validation
  validates :content, presence: true
end
