# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

ShoppinglistItem.destroy_all
Shoppinglist.destroy_all
MealplanRecipe.destroy_all
Mealplan.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all

# Users
puts "creating user 1...."
user1 = User.new(email: "miguel@example.com", password: "123456", likes: "chicken, beef, salmon", dislikes: "pasta, rice")
user1.save!
puts "creating user 2...."
user2 = User.new(email: "carlos@example.com", password: "123456", likes: "pasta", dislikes: "chicken, beef, salmon")
user2.save!
puts "creating user 3...."
user3 = User.new(email: "roman@example.com", password: "123456", likes: "salad", dislikes: "chicken, beef, salmon")
user3.save!
puts "creating user 4...."
user4 = User.new(email: "maria@example.com", password: "123456" likes: "salmon", dislikes: "onions")
user4.save!
puts "creating user 5...."
user5 = User.new(email: "jimena@example.com", password: "123456", likes: "chicken", dislikes: "beef")
user5.save!
puts "creating user 6...."
user7 = User.new(email: "juan@gmail.com", password: "123456", likes: "tacos", dislikes: "beef")
user7.save!
puts "creating user 7...."
user2 = User.new(email: "valeria@gmail.com", password: "123456", likes: "chicken", dislikes: "beef")
user2.save!

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
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2021/02/Teriyaki-Salmon-Sushi-Bowl-recipe-4.jpg")
teriyaki_salmon_bowl = Recipe.new(name: "Teriyaki Salmon Bowl", instructions: "1. Cook rice. 2. Cook salmon. 3. Make teriyaki sauce. 4. Assemble bowl.", category: "hypocaloric")
teriyaki_salmon_bowl.photo.attach(io: file, filename: "teriyaki-bowl.jpg", content_type: "image/jpg")
teriyaki_salmon_bowl.save!
teriyaki_salmon_bowl.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
teriyaki_salmon_bowl.recipe_ingredients.create!(ingredient_id: rice.id, quantity: 600)

puts "creating recipe tuscan salmon"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2019/08/tuscan-salmon-recipe.jpg")
tuscan_salmon = Recipe.new(name: "Tuscan Salmon", instructions: "1. Cook salmon. 2. Make sauce. 3. Assemble dish.", category: "hypocaloric")
tuscan_salmon.photo.attach(io: file, filename: "tuscan-salmon.jpg", content_type: "image/jpg")
tuscan_salmon.save!
tuscan_salmon.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
tuscan_salmon.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe honey garlic chicken"
file = URI.open("https://www.recipetineats.com/wp-content/uploads/2020/02/Honey-Garlic-Chicken-Breast_5-SQ.jpg")
honey_garlic_chicken = Recipe.new(name: "Honey Garlic Chicken", instructions: "1. Cook chicken. 2. Make sauce. 3. Assemble dish.", category: "hypocaloric")
honey_garlic_chicken.photo.attach(io: file, filename: "honey-garlic-chicken.jpg", content_type: "image/jpg")
honey_garlic_chicken.save!
honey_garlic_chicken.recipe_ingredients.create!(ingredient_id: chicken.id, quantity: 4)
honey_garlic_chicken.recipe_ingredients.create!(ingredient_id: honey.id, quantity: 3)


puts "creating recipe chicken pasta"
file = URI.open("https://skinnyspatula.com/wp-content/uploads/2022/10/Creamy_Garlic_Chicken_Pasta_0-720x720.jpg")
chicken_pasta = Recipe.new(name: "Chicken Pasta", instructions: "1. Cook pasta. 2. Cook chicken. 3. Make sauce. 4. Assemble dish.", category: "hypocaloric")
chicken_pasta.photo.attach(io: file, filename: "chicken-pasta.jpg", content_type: "image/jpg")
chicken_pasta.save!
chicken_pasta.recipe_ingredients.create!(ingredient_id: chicken.id, quantity: 6)
chicken_pasta.recipe_ingredients.create!(ingredient_id: pasta.id, quantity: 600)

puts "creating recipe salmon pasta"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2017/08/pasta-with-salmon-recipes.jpg")
salmon_pasta = Recipe.new(name: "Salmon Pasta", instructions: "1. Cook pasta. 2. Cook salmon. 3. Make sauce. 4. Assemble dish.", category: "traditional")
salmon_pasta.photo.attach(io: file, filename: "salmon-pasta.jpg", content_type: "image/jpg")
salmon_pasta.save!
salmon_pasta.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
salmon_pasta.recipe_ingredients.create!(ingredient_id: pasta.id, quantity: 600)

#  end of recipes for mealplan1

puts "creating recipe fish burger"
file = URI.open("https://www.kitchensanctuary.com/wp-content/uploads/2014/01/Crispy-Fish-Burger-with-Shoestring-Fries-Recipe-square-FS-500x500.jpg")
fish_burger = Recipe.new(name: "Fish Burger", instructions: "1. Cook fish. 2. Assemble burger.", category: "traditional")
fish_burger.photo.attach(io: file, filename: "fish-burger.jpg", content_type: "image/jpg")
fish_burger.save!
fish_burger.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
fish_burger.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)
fish_burger.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)

puts "creating recipe wellington beef"
file = URI.open("https://hips.hearstapps.com/del.h-cdn.co/assets/18/11/2048x1152/hd-aspect-1520886453-beef-wellington-delish.jpg?resize=1200:*")
wellington_beef = Recipe.new(name: "Wellington Beef", instructions: "1. Cook beef. 2. Assemble dish.", category: "traditional")
wellington_beef.photo.attach(io: file, filename: "wellington-beef.jpg", content_type: "image/jpg")
wellington_beef.save!
wellington_beef.recipe_ingredients.create!(ingredient_id: beef.id, quantity: 1)
wellington_beef.recipe_ingredients.create!(ingredient_id: butter.id, quantity: 1)

puts "creating recipe tacos"
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg/1200px-001_Tacos_de_carnitas%2C_carne_asada_y_al_pastor.jpg")
tacos = Recipe.new(name: "Tacos", instructions: "1. Cook beef. 2. Assemble tacos.", category: "traditional")
tacos.photo.attach(io: file, filename: "tacos.jpg", content_type: "image/jpg")
tacos.save!
tacos.recipe_ingredients.create!(ingredient_id: beef.id, quantity: 1)
tacos.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe chicken salad"
file = URI.open("https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/05/Chicken-Salad-3.jpg")
chicken_salad = Recipe.new(name: "Chicken Salad", instructions: "1. Cook chicken. 2. Assemble salad.", category: "traditional")
chicken_salad.photo.attach(io: file, filename: "chicken_salad.jpg", content_type: "image/jpg")
chicken_salad.save!
chicken_salad.recipe_ingredients.create!(ingredient_id: chicken.id, quantity: 1)
chicken_salad.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)

puts "creating recipe salad"
file = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2014/05/Epic-summer-salad-hub-2646e6e.jpg")
salad = Recipe.new(name: "Salad", instructions: "1. Assemble salad.", category: "vegetarian")
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!
salad.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
salad.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)
salad.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe vegan burger"
file = URI.open("https://lovingitvegan.com/wp-content/uploads/2022/09/Vegan-Burger-Square.jpg")
vegan_burger = Recipe.new(name: "Vegan Burger", instructions: "1. Assemble burger.", category: "vegan")
vegan_burger.photo.attach(io: file, filename: "vegan-burger.jpg", content_type: "image/jpg")
vegan_burger.save!
vegan_burger.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
vegan_burger.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)
vegan_burger.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)
vegan_burger.recipe_ingredients.create!(ingredient_id: bread.id, quantity: 1)

# Mealplans
puts "creating mealplan 1"
mealplan1 = Mealplan.new(user_id: user1.id, initial_date: Date.today, days: 7, category: "hypocaloric")
mealplan1.save!
# TODO
# refactor this
mealplan1.mealplan_recipes.create!(recipe: teriyaki_salmon_bowl)
mealplan1.mealplan_recipes.create!(recipe: tuscan_salmon)
mealplan1.mealplan_recipes.create!(recipe: honey_garlic_chicken)
mealplan1.mealplan_recipes.create!(recipe: chicken_pasta)
mealplan1.mealplan_recipes.create!(recipe: salmon_pasta)

puts "creating mealplan 2"
mealplan2 = Mealplan.new(user_id: user2.id, initial_date: Date.today, days: 7, category: "traditional")
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
shopping_list1 = Shoppinglist.new(mealplan_id: mealplan1.id)
shopping_list1.save!
mealplan1.recipes.each do |recipe|
  recipe.recipe_ingredients.each do |recipe_ingredient|
    shopping_list1.shoppinglist_items.create!(recipe_ingredient: recipe_ingredient)
  end
end

puts "creating shopping list 2"
shopping_list2 = Shoppinglist.new(mealplan_id: mealplan2.id)
shopping_list2.save!
mealplan2.recipes.each do |recipe|
  recipe.recipe_ingredients.each do |recipe_ingredient|
    shopping_list2.shoppinglist_items.create!(recipe_ingredient: recipe_ingredient)
  end
end
