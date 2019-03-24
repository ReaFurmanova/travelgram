json.extract! article, :id, :title, :text, :country, :latitude, :longtitude, :belong_to, :created_at, :updated_at
json.url article_url(article, format: :json)
