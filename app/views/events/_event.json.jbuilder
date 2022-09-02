json.extract! event, :id, :name, :description, :image, :created_at, :updated_at
json.url event_url(event, format: :json)
