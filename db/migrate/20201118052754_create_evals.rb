class CreateEvals < ActiveRecord::Migration[5.2]
  def change
    create_table :evals do |t|
      t.integer :eval1
      t.integer :eval2
      t.integer :eval3
      t.integer :eval4
      t.string :cmt
      t.integer :user_id
      t.integer :store_id
      t.datetime :date

      t.timestamps
    end
  end
end
