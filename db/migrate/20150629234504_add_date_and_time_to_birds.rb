class AddDateAndTimeToBirds < ActiveRecord::Migration
  def change
    add_column :birds, :date_seen, :date
    add_column :birds, :time_seen, :time
  end
end
