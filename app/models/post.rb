class Post < ApplicationRecord # :nodoc:
  # association
  belongs_to :users

  # validation
  validates :content, presence: true
end
