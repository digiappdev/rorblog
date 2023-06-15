class Article < ApplicationRecord
  
  enum status: [:draft, :published]

  scope :published, -> {where(status: 1) }
  scope :draft, -> {where(status: 0)}

  has_one_attached :fetimg do |attachable|
    attachable.variant :thumb, resize_to_limit: [350, 350]
    attachable.variant :frontthumb, resize_to_fill: [400, 250]
  end
  has_rich_text :content
  belongs_to :user
end
