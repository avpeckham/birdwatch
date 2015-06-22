json.array!(@birds) do |bird|
  json.extract! bird, :id, :common_name
  json.url bird_url(bird, format: :json)
end
