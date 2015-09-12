class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.boolean :atmosphere
      t.timestamps null: false
    end
  end
end
