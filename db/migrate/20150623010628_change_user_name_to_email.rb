class ChangeUserNameToEmail < ActiveRecord::Migration
  def change
  	rename_column :Users, :username, :email
  end
end
