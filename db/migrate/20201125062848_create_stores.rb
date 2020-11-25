class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :sname
      t.string :addr
      t.integer :tel
      t.integer :open
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3
      t.integer :eval4
      t.integer :eval5

      t.timestamps
    end
  end
end
