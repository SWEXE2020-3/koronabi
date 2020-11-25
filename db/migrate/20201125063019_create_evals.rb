class CreateEvals < ActiveRecord::Migration[5.2]
  def change
    create_table :evals do |t|
      t.integer :ceval
      t.string :cmt
      t.integer :user_id
      t.integer :store_id
      t.datetime :date

      t.timestamps
    end
  end
end
