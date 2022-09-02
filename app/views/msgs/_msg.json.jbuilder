json.extract! msg, :id, :title, :cate_id, :content, :created_at, :updated_at
json.url msg_url(msg, format: :json)