json.extract! annonce, :id, :title, :content, :image, :created_at, :updated_at
json.url annonce_url(annonce, format: :json)
