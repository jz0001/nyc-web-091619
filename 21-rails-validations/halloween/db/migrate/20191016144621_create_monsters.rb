class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :scariness
      t.decimal :speed

      t.timestamps
    end
  end
end
