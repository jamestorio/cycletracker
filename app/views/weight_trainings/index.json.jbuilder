json.array!(@weight_trainings) do |weight_training|
  json.extract! weight_training, :date, :push_up, :sit_up, :toe_raise, :squat, :leg_extension, :curl, :tricep_exstension, :should_press, :lat_pulldown, :bench_press, :seated_row, :peck_fly
  json.url weight_training_url(weight_training, format: :json)
end
