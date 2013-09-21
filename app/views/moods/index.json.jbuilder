json.array!(@moods) do |mood|
  json.extract! mood, :date, :feeling, :note
  json.url mood_url(mood, format: :json)
end
