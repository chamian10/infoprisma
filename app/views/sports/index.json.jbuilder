json.array!(@sports) do |sport|
  json.extract! sport, :id, :title, :body, :summary, :date
  json.url sport_url(sport, format: :json)
end
