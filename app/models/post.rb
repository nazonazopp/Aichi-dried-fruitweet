class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :text, presence: true
  belongs_to :user
  has_many :comments 

  validates :title, presence: true
  validates :image, presence: true 
end
