class AddDesignerIdToDonuts < ActiveRecord::Migration
  def change
    add_column :donuts, :designer_id, :integer
  end
end
