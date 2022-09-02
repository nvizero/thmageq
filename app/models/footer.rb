class Footer < ApplicationRecord

  mount_uploader :img, ImageUploader
  validates_processing_of :img
  
  default_scope { order(sort: :desc) }
  # belongs_to :cate
  # has_many :ware_houses
  # has_many :stores, through: :ware_houses
  has_many :footer_msgs
  has_many :msgs, through: :footer_msgs
end
