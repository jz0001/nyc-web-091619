class CreateDesignersTable < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :name
      t.timestamps
    end
  end
end
