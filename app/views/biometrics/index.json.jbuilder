json.array!(@biometrics) do |biometric|
  json.extract! biometric, :date, :weight, :bmi, :note, :time
  json.url biometric_url(biometric, format: :json)
end
