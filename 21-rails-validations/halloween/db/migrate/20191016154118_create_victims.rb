class CreateVictims < ActiveRecord::Migration[6.0]
  def change
    create_table :victims do |t|
      t.string :name
      t.decimal :speed
      t.boolean :living
      t.references :monster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
