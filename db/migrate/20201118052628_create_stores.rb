class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :sname
      t.string :addr
      t.integer :tel

      t.timestamps
    end
  end
end
