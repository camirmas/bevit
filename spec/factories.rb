FactoryGirl.define do
  factory :drink do
    name ("a".."z").to_a.sample(4).join
    glass "martini"
    category ["before dinner", "after dinner", "party time"].sample
    ingredients ["Gin", "Vermouth", "Tequila", "lime juice", "Vodka"].sample(3)
    amounts (1..10).to_a.sample(3)
    garnish "friendship"
    preparation "do the stuff"
    special_ingredients ["love"]
  end
end
