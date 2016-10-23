json.extract! blog, :id, :Title, :post, :user_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)