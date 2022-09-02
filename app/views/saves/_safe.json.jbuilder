json.extract! safe, :id, :title, :title_en, :img, :content, :content_en, :sort, :created_at, :updated_at
json.url safe_url(safe, format: :json)
