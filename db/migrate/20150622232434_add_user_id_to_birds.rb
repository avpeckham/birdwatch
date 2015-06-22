class AddUserIdToBirds < ActiveRecord::Migration
  def change
    add_column :birds, :user_id, :integer
  end
end
