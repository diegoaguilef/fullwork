json.extract! activity, :id, :title, :content, :summary, :image, :author, :tag_id, :equipment_id, :duration_id, :created_at, :updated_at
json.url activity_url(activity, format: :json)
