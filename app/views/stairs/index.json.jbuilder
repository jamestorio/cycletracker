json.array!(@stairs) do |stair|
  json.extract! stair, :Date, :duration
  json.url stair_url(stair, format: :json)
end
