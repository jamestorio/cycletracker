class ChangeStringsToNumbers < ActiveRecord::Migration
  def change
    change_table :recents do |t|
      t.change :time, :integer 
      t.change :distance, :decimal
      t.change :average, :decimal
      t.change :speed, :decimal
      t.change :fastest, :decimal
      t.change :speed, :decimal
    end
    
  end
end
