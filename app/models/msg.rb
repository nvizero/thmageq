class Msg < ApplicationRecord
    paginates_per 12
    belongs_to :cate
    # belongs_to :user

    mount_uploader :img, ImageUploader
    # validates_processing_of :img

    
    # default_scope { order(sort: :desc) }

    # validates :title,   :presence => { :message => "標題-不能空白" } ,
    #                     :uniqueness => { :message => "標題-必填" }
    
end
