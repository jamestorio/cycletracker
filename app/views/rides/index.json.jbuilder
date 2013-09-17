json.array!(@rides) do |ride|
  json.extract! ride, :name, :location
  json.url ride_url(ride, format: :json)
end
