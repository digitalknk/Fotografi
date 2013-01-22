class Photo < ActiveRecord::Base
  attr_accessible :image, :user_id, :description, :title
  mount_uploader :image, ImageUploader

  validates_presence_of :image
  
  belongs_to :user
end
