class CreateRecents < ActiveRecord::Migration
  def change
    create_table :recents do |t|
      t.string :ride
      t.date :Date
      t.string :route
      t.string :ride
      t.string :time
      t.string :distance
      t.string :average
      t.string :speed
      t.string :fastest
      t.string :speed
      t.text :notes

      t.timestamps
    end
  end
end
