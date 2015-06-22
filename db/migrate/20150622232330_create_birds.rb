class CreateBirds < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.text :common_name

      t.timestamps null: false
    end
  end
end
