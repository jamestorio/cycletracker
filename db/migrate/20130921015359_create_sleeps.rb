class CreateSleeps < ActiveRecord::Migration
  def change
    create_table :sleeps do |t|
      t.date :date
      t.time :duration

      t.timestamps
    end
  end
end
