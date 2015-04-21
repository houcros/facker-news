json.array!(@users) do |user|
  json.extract! user, :id, :name, :karma, :about
  json.url user_url(user, format: :json)
end
