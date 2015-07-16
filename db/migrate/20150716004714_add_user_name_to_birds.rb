class AddUserNameToBirds < ActiveRecord::Migration
  def change
    add_column :birds, :user_name, :string
  end
end
