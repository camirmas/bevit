# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

json = File.read("app/assets/javascripts/iba-cocktails/recipes.json")
data = JSON.parse(json)

def get_items(drink, item)
  drink["ingredients"].select { |ing| ing.has_key?(item) }.map { |ing| ing[item] }
end

data.each do |drink|
  ingredient_names = get_items(drink, "ingredient")
  ingredient_amounts = get_items(drink, "cl")
  special_ingredients = get_items(drink, "special")

  Drink.create(
    name: drink["name"],
    glass: drink["glass"],
    category: drink["category"],
    ingredients: ingredient_names,
    amounts: ingredient_amounts,
    garnish: drink["garnish"],
    preparation: drink["preparation"],
    special_ingredients: special_ingredients
  )
end
