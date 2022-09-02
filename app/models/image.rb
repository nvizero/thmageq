class Image < ApplicationRecord
	mount_uploader :file, ImageUploader
    self.table_name = "images"
end
