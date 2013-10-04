class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.string :exercise_type
      t.integer :routine_id

      t.timestamps
    end
  end
end
