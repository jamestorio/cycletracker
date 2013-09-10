json.array!(@recents) do |recent|
  json.extract! recent, :ride, :Date, :route, :ride, :time, :distance, :average, :speed, :fastest, :speed, :notes
  json.url recent_url(recent, format: :json)
end
