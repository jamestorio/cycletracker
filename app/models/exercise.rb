class Exercise < ActiveRecord::Base
  belongs_to :exercise_type
  belongs_to :routine
end
