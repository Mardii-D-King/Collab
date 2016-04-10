class AddUsernameToUsers < ActiveRecord::Migration
#Anything inside this method, is translated to SQL and modifies the database (currently, SQLite)
  def change
#Adds a new column to table "users", called "username" and of type "string"
add_column :users, :username, :string
#Firts, index username for quick (rapid) lookup. Second, ensures usernames are ALWAYS unique.
add_index :users, :username, unique: true
  end
end
