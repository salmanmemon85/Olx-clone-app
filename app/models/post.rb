class Post < ApplicationRecord
  belongs_to :user
  has_many :post
  has_many_attached :images
  has_many :messages
  validates :images, length: { maximum: 5 }
  extend FriendlyId
  friendly_id :title, use: :slugged
end
