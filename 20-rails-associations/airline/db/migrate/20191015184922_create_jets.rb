class CreateJets < ActiveRecord::Migration[6.0]
  def change
    create_table :jets do |t|
      t.string :model
      t.integer :seats
      t.integer :range
      t.references :jet_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
