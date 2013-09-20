class Name < ActiveRecord::Migration
  def change
    add_column :recents, :name, :string
    add_index :recents, :name
  end
end


