class Photo < ActiveRecord::Base
  attr_accessible :image
  mount_uploader :image, ImageUploader

  validates_presence_of :image
end
