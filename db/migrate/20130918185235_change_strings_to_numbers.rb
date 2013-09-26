class ChangeStringsToNumbers < ActiveRecord::Migration
  def change
    remove_column :recents, :time 
    add_column    :recents, :time, :integer
    remove_column :recents, :distance 
    add_column    :recents, :distance, :decimal
    remove_column :recents, :average
    add_column    :recents, :average, :decimal
    remove_column :recents, :speed 
    add_column    :recents, :speed, :decimal
    remove_column :recents, :fastest 
    add_column    :recents, :fastest, :decimal
   
  end
end
