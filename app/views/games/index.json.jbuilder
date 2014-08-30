json.array!(@games) do |game|
  json.extract! game, :id, :name, :level, :date, :id_news, :id_sport, :id_show
  json.url game_url(game, format: :json)
end
