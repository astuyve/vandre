json.array!(@posts) do |post|
  json.extract! post, :id, :name, :description, :picture, :latitude, :longitude
  json.url post_url(post, format: :json)
end
