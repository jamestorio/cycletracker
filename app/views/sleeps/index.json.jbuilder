json.array!(@sleeps) do |sleep|
  json.extract! sleep, :date, :duration
  json.url sleep_url(sleep, format: :json)
end
