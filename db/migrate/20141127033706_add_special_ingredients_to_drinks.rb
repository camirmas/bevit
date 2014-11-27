class AddSpecialIngredientsToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :special_ingredients, :text, array: true, default: []
  end
end
