class Safe < ApplicationRecord
	mount_uploader :img, ImageUploader
	default_scope { order(sort: :desc) }
end
