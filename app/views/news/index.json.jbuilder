json.array!(@news) do |news|
  json.extract! news, :id, :title, :body, :summary
  json.url news_url(news, format: :json)
end
