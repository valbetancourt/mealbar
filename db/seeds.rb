# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

MealplanRecipe.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Shoppinglist.destroy_all
Mealplan.destroy_all
User.destroy_all

# Users
puts "creating user 1...."
user1 = User.new(email: "miguel@example.com", password: "123456")
user1.save!
puts "creating user 2...."
user2 = User.new(email: "carlos@example.com", password: "123456")
user2.save!
puts "creating user 3...."
user3 = User.new(email: "roman@example.com", password: "123456")
user3.save!
puts "creating user 4...."
user4 = User.new(email: "maria@example.com", password: "123456")
user4.save!
puts "creating user 5...."
user5 = User.new(email: "jimena@example.com", password: "123456")
user5.save!

# Ingredients
puts "creating ingredient salmon"
salmon = Ingredient.create(name: "Salmon")
salmon.save!

puts "creating ingredient rice"
rice = Ingredient.new(name: "Rice")
rice.save!

puts "creating ingredient salt"
salt = Ingredient.new(name: "Salt")
salt.save!

puts "creating ingredient honey"
honey = Ingredient.new(name: "Honey")
honey.save!

puts "creating ingredient brown sugar"
brown_sugar = Ingredient.new(name: "Brown Sugar")
brown_sugar.save!

puts "creating ingredient onion"
onion = Ingredient.new(name: "Onion")
onion.save!

puts "creating ingredient avocado"
avocado = Ingredient.new(name: "Avocado")
avocado.save!

puts "creating ingredient olive oil"
olive_oil = Ingredient.new(name: "Olive Oil")
olive_oil.save!

puts "creating ingredient butter"
butter = Ingredient.new(name: "Butter")
butter.save!

puts "creating ingredient parmesan"
parmesan = Ingredient.new(name: "Parmesan")
parmesan.save!

puts "creating ingredient chicken"
chicken = Ingredient.new(name: "Chicken")
chicken.save!

puts "creating ingredient garlic"
garlic = Ingredient.new(name: "Garlic")
garlic.save!

puts "creating ingredient pasta"
pasta = Ingredient.new(name: "Pasta")
pasta.save!

puts "creating ingredient beef"
beef = Ingredient.new(name: "Beef")
beef.save!

puts "creating ingredient bread"
bread = Ingredient.new(name: "Bread")
bread.save!

puts "creating ingredient tomato"
tomato = Ingredient.new(name: "Tomato")
tomato.save!


# Recipes

puts "creating recipe teriyaki salmon bowl"
teriyaki_salmon_bowl = Recipe.new(name: "Teriyaki Salmon Bowl", instructions: "1. Cook rice. 2. Cook salmon. 3. Make teriyaki sauce. 4. Assemble bowl.")
teriyaki_salmon_bowl.save!
teriyaki_salmon_bowl.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
teriyaki_salmon_bowl.recipe_ingredients.create!(ingredient_id: rice.id, quantity: 600)

puts "creating recipe tuscan salmon"
tuscan_salmon = Recipe.new(name: "Tuscan Salmon", instructions: "1. Cook salmon. 2. Make sauce. 3. Assemble dish.")
tuscan_salmon.save!
tuscan_salmon.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
tuscan_salmon.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe honey garlic chicken"
honey_garlic_chicken = Recipe.new(name: "Honey Garlic Chicken", instructions: "1. Cook chicken. 2. Make sauce. 3. Assemble dish.")
honey_garlic_chicken.save!
honey_garlic_chicken.recipe_ingredients.create!(ingredient_id: chicken.id, quantity: 4)
honey_garlic_chicken.recipe_ingredients.create!(ingredient_id: honey.id, quantity: 3)


puts "creating recipe chicken pasta"
chicken_pasta = Recipe.new(name: "Chicken Pasta", instructions: "1. Cook pasta. 2. Cook chicken. 3. Make sauce. 4. Assemble dish.")
chicken_pasta.save!
chicken_pasta.recipe_ingredients.create!(ingredient_id: chicken.id, quantity: 6)
chicken_pasta.recipe_ingredients.create!(ingredient_id: pasta.id, quantity: 600)

puts "creating recipe salmon pasta"
salmon_pasta = Recipe.new(name: "Salmon Pasta", instructions: "1. Cook pasta. 2. Cook salmon. 3. Make sauce. 4. Assemble dish.")
salmon_pasta.save!
salmon_pasta.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
salmon_pasta.recipe_ingredients.create!(ingredient_id: pasta.id, quantity: 600)

#  end of recipes for mealplan1

puts "creating recipe fish burger"
fish_burger = Recipe.new(name: "Fish Burger", instructions: "1. Cook fish. 2. Assemble burger.")
fish_burger.save!
fish_burger.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
fish_burger.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)
fish_burger.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)

puts "creating recipe wellington beef"
wellington_beef = Recipe.new(name: "Wellington Beef", instructions: "1. Cook beef. 2. Assemble dish.")
wellington_beef.save!
wellington_beef.recipe_ingredients.create!(ingredient_id: beef.id, quantity: 1)
wellington_beef.recipe_ingredients.create!(ingredient_id: butter.id, quantity: 1)

puts "creating recipe tacos"
tacos = Recipe.new(name: "Tacos", instructions: "1. Cook beef. 2. Assemble tacos.")
tacos.save!
tacos.recipe_ingredients.create!(ingredient_id: beef.id, quantity: 1)
tacos.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe chicken salad"
chicken_salad = Recipe.new(name: "Chicken Salad", instructions: "1. Cook chicken. 2. Assemble salad.")
chicken_salad.save!
chicken_salad.recipe_ingredients.create!(ingredient_id: chicken.id, quantity: 1)
chicken_salad.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)

puts "creating recipe salad"
salad = Recipe.new(name: "Salad", instructions: "1. Assemble salad.")
salad.save!
salad.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
salad.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)
salad.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

# Mealplans
puts "creating mealplan 1"
mealplan1 = Mealplan.new(user_id: user1.id)
mealplan1.save!
# TODO
# refactor this
mealplan1.mealplan_recipes.create!(recipe: teriyaki_salmon_bowl)
mealplan1.mealplan_recipes.create!(recipe: tuscan_salmon)
mealplan1.mealplan_recipes.create!(recipe: honey_garlic_chicken)
mealplan1.mealplan_recipes.create!(recipe: chicken_pasta)
mealplan1.mealplan_recipes.create!(recipe: salmon_pasta)

puts "creating mealplan 2"
mealplan2 = Mealplan.new(user_id: user2.id)
mealplan2.save!
# TODO
# refactor this
mealplan2.mealplan_recipes.create!(recipe: fish_burger)
mealplan2.mealplan_recipes.create!(recipe: wellington_beef)
mealplan2.mealplan_recipes.create!(recipe: tacos)
mealplan2.mealplan_recipes.create!(recipe: chicken_salad)
mealplan2.mealplan_recipes.create!(recipe: salad)

# Shopping list

puts "creating shopping list 1"
shopping_list1 = Shoppinglist.new
shopping_list1.save!
mealplan1.recipes.each do |recipe|
  recipe.recipe_ingredients.each do |recipe_ingredient|
    shopping_list1.shoppinglist_items.create!(recipe_ingredient: recipe_ingredient)
  end
end

puts "creating shopping list 2"
shopping_list2 = Shoppinglist.new
shopping_list2.save!
mealplan2.recipes.each do |recipe|
  recipe.recipe_ingredients.each do |recipe_ingredient|
    shopping_list2.shoppinglist_items.create!(recipe_ingredient: recipe_ingredient)
  end
end
