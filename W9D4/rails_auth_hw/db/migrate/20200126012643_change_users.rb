class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :session_token, :string, null: false

    add_index :users, [:username, :session_token], unique: true
    add_index :users, :username, unique: true
  end
end
