require 'json'
require 'open-uri'


puts "seeding ingredients list"
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
file = open(url).read
drinks_hash = JSON.parse(file)
ingredients_list = drinks_hash["drinks"]
ingredients_list.each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "Ingredient's list finalised!"


