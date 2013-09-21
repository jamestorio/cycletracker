class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.date :date
      t.string :feeling
      t.text :note

      t.timestamps
    end
  end
end
