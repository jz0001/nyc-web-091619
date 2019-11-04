class CreateAppearances < ActiveRecord::Migration[5.2]
  def change
    create_table :appearances do |t|
      t.string :title
      t.belongs_to :celebrity, foreign_key: true

      t.timestamps
    end
  end
end
