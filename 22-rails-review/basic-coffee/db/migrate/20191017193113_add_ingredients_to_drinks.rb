class AddIngredientsToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_column :drinks, :ingredients, :string
  end
end
