class CreateWeightTrainings < ActiveRecord::Migration
  def change
    create_table :weight_trainings do |t|
      t.date :date
      t.integer :push_up
      t.integer :sit_up
      t.integer :toe_raise
      t.integer :squat
      t.integer :leg_extension
      t.integer :curl
      t.integer :tricep_exstension
      t.integer :should_press
      t.integer :lat_pulldown
      t.integer :bench_press
      t.integer :seated_row
      t.integer :peck_fly

      t.timestamps
    end
  end
end
