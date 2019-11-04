class CreateDonutsTable < ActiveRecord::Migration
  def change
    create_table :donuts do |t|
      t.string :flavor
      t.float :price
      t.timestamps
    end
  end
end
