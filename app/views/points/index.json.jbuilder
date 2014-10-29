json.array!(@points) do |point|
  json.extract! point, :id, :title, :geo
  json.url point_url(point, format: :json)
end
