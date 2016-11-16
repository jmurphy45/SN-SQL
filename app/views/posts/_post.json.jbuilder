json.extract! post, :id, :user_post, :created_at, :updated_at
json.url post_url(post, format: :json)