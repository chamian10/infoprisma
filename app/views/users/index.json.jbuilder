json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastname, :nick, :birthdate, :provider, :uid
  json.url user_url(user, format: :json)
end
