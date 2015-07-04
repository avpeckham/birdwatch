class AddLatitudeAndLongitudeToBirds < ActiveRecord::Migration
  def change
  	add_column :birds, :latitude,  :float 
	add_column :birds, :longitude, :float 
  end
end
