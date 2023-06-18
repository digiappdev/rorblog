class Category < ApplicationRecord
  has_and_belongs_to_many :articles
  belongs_to :user
  
  validates :name, presence: true, length: {minimum: 3, maximum: 40}
end
