json.extract! news, :id, :product_id, :title, :body, :created_at, :updated_at
json.url news_url(news, format: :json)
