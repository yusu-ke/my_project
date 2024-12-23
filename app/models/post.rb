class Post < ApplicationRecord
  validates :temple_name, presence: true, length: { maximum: 20 }
  validates :location, presence: true, length: { maximum: 20 }
  validates :comment, presence: true, length: { maximum: 255 }

  mount_uploader :post_image, PostImageUploader

  belongs_to :user
end
