class AddUserIdToRecents < ActiveRecord::Migration
  def change
    add_column :recents, :user_id, :integer
    add_index :recents, :user_id
    
    
  end
end
