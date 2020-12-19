class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :sname
      t.string :addr1
      t.string :addr2
      t.string :addr3
      t.integer :tel
      t.time :open
      t.time :close
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3
      t.integer :eval4
      t.integer :eval5

      t.timestamps
    end
  end
end
