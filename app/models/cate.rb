class Cate < ApplicationRecord

  mount_uploader :img, ImageUploader
  validates_processing_of :img
  default_scope { order(level: :desc) }
  # has_many  :footer
  # validates :name,   :presence => { :message => "名稱-不能空白" }
  # validates :name,   :uniqueness => { :message => "名稱-必填" }

end
