class CreateStairs < ActiveRecord::Migration
  def change
    create_table :stairs do |t|
      t.date :Date
      t.decimal :duration

      t.timestamps
    end
  end
end
