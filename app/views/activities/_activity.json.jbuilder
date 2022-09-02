json.extract! activity, :id, :date, :time, :title, :content, :limit_user, :other_table_name, :created_at, :updated_at
json.url activity_url(activity, format: :json)