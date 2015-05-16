json.array!(@rudiments) do |rudiment|
  json.extract! rudiment, :id, :number, :name, :yt, :sheet
  json.url rudiment_url(rudiment, format: :json)
end
