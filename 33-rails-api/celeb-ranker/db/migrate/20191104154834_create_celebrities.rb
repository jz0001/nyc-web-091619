class CreateCelebrities < ActiveRecord::Migration[5.2]
  def change
    create_table :celebrities do |t|
      t.string :name
      t.string :image
      t.integer :age
      t.integer :likes

      t.timestamps
    end
  end
end
