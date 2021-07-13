class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments 

  validates :title, presence: true
  validates :text, presence: true
  validates :image, presence: true 
end
