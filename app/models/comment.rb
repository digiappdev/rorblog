class Comment < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :content, presence: true, length: {minimum: 20, maximum: 255}
end
