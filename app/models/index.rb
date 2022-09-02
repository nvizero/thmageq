class Index
  include Mongoid::Document
  field :name, type: String
  field :images, type: String
  field :content, type: String
end
