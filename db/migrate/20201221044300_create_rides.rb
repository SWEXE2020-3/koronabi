class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :ride_area, null: false, defaul:0

      t.timestamps
    end
  end
end
