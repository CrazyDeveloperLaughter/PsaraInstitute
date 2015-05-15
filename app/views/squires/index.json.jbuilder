json.array!(@squires) do |squire|
  json.extract! squire, :id, :title, :description
  json.url squire_url(squire, format: :json)
end
