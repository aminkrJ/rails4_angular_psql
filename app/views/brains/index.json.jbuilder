json.array!(@brains) do |brain|
  json.extract! brain, :id, :name
  json.url brain_url(brain, format: :json)
end
