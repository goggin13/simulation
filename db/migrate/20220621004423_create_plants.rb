class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.integer :row
      t.integer :column
      t.integer :age
      t.references :planet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
