class Post < ApplicationRecord
  validates :temple_name, presence: true, length: { maximum: 20 }
  validates :location, presence: true, length: { maximum: 20 }
  validates :comment, presence: true, length: { maximum: 255 }

  belongs_to :user
end
