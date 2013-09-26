class ChangeStringsToNumbers < ActiveRecord::Migration
  def change
    remove_column :recents, :time 
    add_column :recents, :time, :integer
    change_table :recents do |t|
      t.change :distance, :decimal
      t.change :average, :decimal
      t.change :speed, :decimal
      t.change :fastest, :decimal
      t.change :speed, :decimal
    end
    
  end
end
