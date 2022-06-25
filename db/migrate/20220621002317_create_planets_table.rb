class CreatePlanetsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :title
      t.integer :rows
      t.integer :columns
      t.integer :age

      t.timestamps
    end
  end
end
