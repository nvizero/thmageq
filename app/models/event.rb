class Event < ApplicationRecord

  mount_uploader :image, ImageUploader
  validates_processing_of :image

  validates :name,   :presence => { :message => "名稱-不能空白" }
  #validates :cate,   :presence => { :message => "分類-不能空白" }
  validates :image,   :presence => { :message => "不能空白" }
  # validate :image_size_validation
  scope :random_order, -> {order('events.id')}
  # private
  #   def image_size_validation
  #     errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  #   end
end
