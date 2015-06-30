class ChangeDateSeenColumnInBirds < ActiveRecord::Migration
  def change
  	change_column :birds, :date_seen, :datetime
    remove_column :birds, :time_seen, :time
  end
end
