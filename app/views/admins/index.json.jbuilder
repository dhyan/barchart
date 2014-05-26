json.array!(@admins) do |admin|
  json.extract! admin, :id, :name, :sex, :address
  json.url admin_url(admin, format: :json)
end
