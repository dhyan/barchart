json.array!(@users) do |user|
  json.extract! user, :id, :name, :msg_count
  json.url user_url(user, format: :json)
end
