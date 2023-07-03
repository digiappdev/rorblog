class AddUserNameAndBioToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :userbio, :text
  end
end
