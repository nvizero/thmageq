class Photo
  include Mongoid::Document
  field :name, type: String
  field :image, type: String
  field :content, type: String
end
