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
puts "creating user 6...."
user7 = User.new(email: "juan@gmail.com", password: "123456")
user7.save!
puts "creating user 7...."
user2 = User.new(email: "valeria@gmail.com", password: "123456")
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

puts "creating ingredient riccotta"
ricotta = Ingredient.new(name: "Ricotta")
ricotta.save!

puts "creating ingredient zucchini"
zucchini = Ingredient.new(name: "Zucchini")
zucchini.save!

puts "creating ingredient green olives"
olives = Ingredient.new(name: "Green Olives")
olives.save!

puts "creating ingredient cherry tomatoes"
cherry_tomatoes = Ingredient.new(name: "Cherry Tomatoes")
cherry_tomatoes.save!

puts "creating ingredient coconut milk"
coconut_milk = Ingredient.new(name: "Coconut Milk")
coconut_milk.save!

puts "creating ingredient mushrooms"
mushrooms = Ingredient.new(name: "Mushrooms")
mushrooms.save!

puts "creating ingredient lime juice"
lime_juice = Ingredient.new(name: "Lime Juice")
lime_juice.save!

puts "creating ingredient cucumber"
cucumber = Ingredient.new(name: "Cucumber")
cucumber.save!

puts "creating ingredient oats"
oats = Ingredient.new(name: "Oats")
oats.save!

puts "creating ingredient berries"
berries = Ingredient.new(name: "Berries")
berries.save!

puts "creating ingredient broccoli"
broccoli = Ingredient.new(name: "Broccoli")
broccoli.save!

puts "creating ingredient cauliflower"
cauliflower = Ingredient.new(name: "Cauliflower")
cauliflower.save!

puts "creating ingredient pesto"
pesto = Ingredient.new(name: "Pesto")
pesto.save!

puts "creating ingredient shrimp"
shrimp = Ingredient.new(name: "Shrimp")
shrimp.save!

puts "creating ingredient asparagus"
asparagus = Ingredient.new(name: "Asparagus")
asparagus.save!

puts "creating ingredient tuna"
tuna = Ingredient.new(name: "Tuna")
tuna.save!

puts "creating ingredient chickpeas"
chickpeas = Ingredient.new(name: "Chickpeas")
chickpeas.save!

puts "creating ingredient yogurt"
yogurt = Ingredient.new(name: "Yogurt")
yogurt.save!

puts "creating ingredient berries"
berries = Ingredient.new(name: "Berries")
berries.save!

puts "creating ingredient lemon juice"
lemon_juice = Ingredient.new(name: "Lemon Juice")
lemon_juice.save!

puts "creating ingredient quinoa"
quinoa = Ingredient.new(name: "Quinoa")
quinoa.save!

puts "creating ingredient black beans"
black_beans = Ingredient.new(name: "Black Beans")
black_beans.save!

puts "creating ingredient cod"
cod = Ingredient.new(name: "Cod")
cod.save!

puts "creating ingredient spinach"
spinach = Ingredient.new(name: "Spinach")
spinach.save!


# Recipes
#----------------------------------------------- hypocaloric recipes ----------------------------------------------------
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

puts "creating recipe Honey Garlic Pork Rice Bowl"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2022/09/Pork-Rice-Bowl.jpg")
pork_rice_bowl = Recipe.new(name: "Pork Rice Bowl", instructions: "1. To make the honey garlic pork bites: Add the diced pork to a large salad bowl with cornstarch, salt, and pepper. Mix to evenly coat all the pork pieces. 2. Heat the oil in a large skillet over medium-high heat. Melt butter into the oil and add the seasoned pork cubes and cook on all sides until golden brown, for about 6-8 minutes. You may need to work in batches to avoid overcrowding the pan and steaming the pork bites instead of browning them. 3. Once the pork is done cooking, pour over the garlic, honey, chicken stock (or beef stock), lemon juice, and hot sauce (if using) and stir to completely coat; allow the sauce to simmer for a couple of minutes to meld all the flavors and reduce a little until it sticks to the pork bites. 4. Garnish the honey garlic pork bites with fresh chopped parsley and red chili pepper flakes, then serve over rice and steamed broccoli. Enjoy! ❤️", category: "hypocaloric")
pork_rice_bowl.photo.attach(io: file, filename: "pork_rice_bowl.jpg", content_type: "image/jpg")
pork_rice_bowl.save!
pork_rice_bowl.recipe_ingredients.create!(ingredient_id: rice.id, quantity: 6)
pork_rice_bowl.recipe_ingredients.create!(ingredient_id: garlic.id, quantity: 600)
pork_rice_bowl.recipe_ingredients.create!(ingredient_id: honey.id, quantity: 600)

puts "creating recipe Chicken Meatballs"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2019/03/Meal-Prep-Garlic-Butter-Chicken-Meatballs.jpg")
chicken_meatballs = Recipe.new(name: "Chicken Meatballs", instructions: "1. Cook zucchini 2. Mix ingredients 3.Cook chicken meatballs 4. Enjoy", category: "hypocaloric")
chicken_meatballs.photo.attach(io: file, filename: "chicken_meatballs.jpg", content_type: "image/jpg")
chicken_meatballs.save!
chicken_meatballs.recipe_ingredients.create!(ingredient_id: beef.id, quantity: 6)
chicken_meatballs.recipe_ingredients.create!(ingredient_id: garlic.id, quantity: 600)
chicken_meatballs.recipe_ingredients.create!(ingredient_id: butter.id, quantity: 6)
chicken_meatballs.recipe_ingredients.create!(ingredient_id: zucchini.id, quantity: 6)

puts "creating recipe Broccoli and Cauliflower Soup"
file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsUuutDy2iLgGEtfc2D76a6LHrVW35G5T16gAh6LCNlXuYD6RIFxX7AFHjnbrQac-dKsE&usqp=CAU")
broccoli_and_cauliflower_soup = Recipe.new(name: "Broccoli and Cauliflower Soup", instructions: "1. To make the broccoli and cauliflower soup: In a large pot or Dutch oven, heat the olive oil over medium heat. Add the onion and cook for 3-4 minutes, until translucent. Add the garlic and cook for 1 minute, until fragrant.", category: "hypocaloric")
broccoli_and_cauliflower_soup.photo.attach(io: file, filename: "broccoli_and_cauliflower_soup.jpg", content_type: "image/jpg")
broccoli_and_cauliflower_soup.save!
broccoli_and_cauliflower_soup.recipe_ingredients.create!(ingredient_id: broccoli.id, quantity: 6)
broccoli_and_cauliflower_soup.recipe_ingredients.create!(ingredient_id: cauliflower.id, quantity: 6)
broccoli_and_cauliflower_soup.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)

puts "creating recipe Zucchini Noodles with Pesto"
file = URI.open("https://www.twopeasandtheirpod.com/wp-content/uploads/2013/08/Zucchini-Noodles-with-Pesto-7.jpg")
zucchini_noodles_pesto = Recipe.new(name: "Zucchini Noodles with Pesto", instructions: "1. To make the zucchini noodles with pesto: In a large skillet over medium heat, heat the olive oil. Add the zucchini noodles and cook for 2-3 minutes, until tender. Add the pesto and toss to coat. Season with salt and pepper to taste.", category: "hypocaloric")
zucchini_noodles_pesto.photo.attach(io: file, filename: "zucchini_noodles_pesto.jpg", content_type: "image/jpg")
zucchini_noodles_pesto.save!
zucchini_noodles_pesto.recipe_ingredients.create!(ingredient_id: zucchini.id, quantity: 6)
zucchini_noodles_pesto.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)
zucchini_noodles_pesto.recipe_ingredients.create!(ingredient_id: pesto.id, quantity: 6)

puts "creating recipe Spicy Shrimp and Asparagus"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2019/10/Blackened-Shrimp-and-Asparagus-Skillet-1.jpg")
spicy_shrimp_asparagus = Recipe.new(name: "Spicy Shrimp and Asparagus", instructions: "1. To make the spicy shrimp and asparagus: In a large skillet over medium heat, heat the olive oil. Add the shrimp and cook for 2-3 minutes, until pink. Add the garlic and red pepper flakes and cook for 1 minute, until fragrant. Add the asparagus and cook for 2-3 minutes, until tender. Season with salt and pepper to taste.", category: "hypocaloric")
spicy_shrimp_asparagus.photo.attach(io: file, filename: "spicy_shrimp_asparagus.jpg", content_type: "image/jpg")
spicy_shrimp_asparagus.save!
spicy_shrimp_asparagus.recipe_ingredients.create!(ingredient_id: shrimp.id, quantity: 6)
spicy_shrimp_asparagus.recipe_ingredients.create!(ingredient_id: asparagus.id, quantity: 6)
spicy_shrimp_asparagus.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)

puts "creating recipe Tuna and Chickpea Salad"
file = URI.open("https://dishingouthealth.com/wp-content/uploads/2021/05/ChickpeaTunaSalad_Square.jpg")
tuna_chickpea_salad = Recipe.new(name: "Tuna and Chickpea Salad", instructions: "1. To make the tuna and chickpea salad: In a large bowl, combine the tuna, chickpeas, red onion, and parsley. Add the olive oil and lemon juice and toss to coat. Season with salt and pepper to taste.", category: "hypocaloric")
tuna_chickpea_salad.photo.attach(io: file, filename: "tuna_chickpea_salad.jpg", content_type: "image/jpg")
tuna_chickpea_salad.save!
tuna_chickpea_salad.recipe_ingredients.create!(ingredient_id: tuna.id, quantity: 6)
tuna_chickpea_salad.recipe_ingredients.create!(ingredient_id: chickpeas.id, quantity: 6)
tuna_chickpea_salad.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 6)

puts "creating recipe Greek Yogurt and Berry Parfait"
file = URI.open("https://simplyhomecooked.com/wp-content/uploads/2021/08/yogurt-parfait-4.jpg")
greek_yogurt_berry_parfait = Recipe.new(name: "Greek Yogurt and Berry Parfait", instructions: "1. To make the Greek yogurt and berry parfait: In a small bowl, combine the Greek yogurt and honey. In a separate bowl, combine the berries. In a glass, layer the Greek yogurt, berries, and granola. Repeat until the glass is full.", category: "hypocaloric")
greek_yogurt_berry_parfait.photo.attach(io: file, filename: "greek_yogurt_berry_parfait.jpg", content_type: "image/jpg")
greek_yogurt_berry_parfait.save!
greek_yogurt_berry_parfait.recipe_ingredients.create!(ingredient_id: yogurt.id, quantity: 6)
greek_yogurt_berry_parfait.recipe_ingredients.create!(ingredient_id: honey.id, quantity: 6)
greek_yogurt_berry_parfait.recipe_ingredients.create!(ingredient_id: berries.id, quantity: 6)

puts "creating recipe Steamed Asparagus with Lemon"
file = URI.open("https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/12/9/0/FNK_Steamed-Asparagus_s4x3.jpg.rend.hgtvcom.616.462.suffix/1387411415590.jpeg")
steamed_asparagus_lemon = Recipe.new(name: "Steamed Asparagus with Lemon", instructions: "1. To make the steamed asparagus with lemon: Fill a large pot with 1 inch of water and bring to a boil. Place the asparagus in a steamer basket and place the basket in the pot. Cover and steam for 3-5 minutes, until tender. Transfer the asparagus to a serving dish and drizzle with olive oil and lemon juice. Season with salt and pepper to taste.", category: "hypocaloric")
steamed_asparagus_lemon.photo.attach(io: file, filename: "steamed_asparagus_lemon.jpg", content_type: "image/jpg")
steamed_asparagus_lemon.save!
steamed_asparagus_lemon.recipe_ingredients.create!(ingredient_id: asparagus.id, quantity: 6)
steamed_asparagus_lemon.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)
steamed_asparagus_lemon.recipe_ingredients.create!(ingredient_id: lemon_juice.id, quantity: 6)

puts "creating recipe Quinoa and Black Bean Salad"
file = URI.open("https://detoxinista.com/wp-content/uploads/2018/06/southwest-quinoa-salad.jpg")
quinoa_black_bean_salad = Recipe.new(name: "Quinoa and Black Bean Salad", instructions: "1. To make the quinoa and black bean salad: In a large bowl, combine the quinoa, black beans, red onion, and cilantro. Add the olive oil and lime juice and toss to coat. Season with salt and pepper to taste.", category: "hypocaloric")
quinoa_black_bean_salad.photo.attach(io: file, filename: "quinoa_black_bean_salad.jpg", content_type: "image/jpg")
quinoa_black_bean_salad.save!
quinoa_black_bean_salad.recipe_ingredients.create!(ingredient_id: quinoa.id, quantity: 6)
quinoa_black_bean_salad.recipe_ingredients.create!(ingredient_id: black_beans.id, quantity: 6)
quinoa_black_bean_salad.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 6)

puts "creating recipe Baked Cod with Herbs"
file = URI.open("https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/k%2FPhoto%2FRecipes%2F2019-07-recipe-baked-cod-lemon-garlic-herbs%2F190625-the-kitchn-christine-han-photography-149")
baked_cod_herbs = Recipe.new(name: "Baked Cod with Herbs", instructions: "1. To make the baked cod with herbs: Preheat oven to 400°F (200°C). In a small bowl, combine the olive oil, garlic, parsley, thyme, and lemon juice. Season with salt and pepper to taste. Place the cod fillets on a baking sheet lined with parchment paper. Brush the cod fillets with the olive oil mixture. Bake for 10-12 minutes, until the cod is opaque and flakes easily with a fork.", category: "hypocaloric")
baked_cod_herbs.photo.attach(io: file, filename: "baked_cod_herbs.jpg", content_type: "image/jpg")
baked_cod_herbs.save!
baked_cod_herbs.recipe_ingredients.create!(ingredient_id: cod.id, quantity: 6)
baked_cod_herbs.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)
baked_cod_herbs.recipe_ingredients.create!(ingredient_id: garlic.id, quantity: 6)

puts "creating recipe Spinach and Mushroom Omelette"
file = URI.open("https://static.onecms.io/wp-content/uploads/sites/19/2015/03/23/mushroom-spinach-omelet-ck.jpg")
spinach_mushroom_omelette = Recipe.new(name: "Spinach and Mushroom Omelette", instructions: "1. To make the spinach and mushroom omelette: In a large skillet over medium heat, heat the olive oil. Add the mushrooms and cook for 3-4 minutes, until tender. Add the spinach and cook for 1-2 minutes, until wilted. Season with salt and pepper to taste. Transfer the mushrooms and spinach to a plate. In a small bowl, whisk together the eggs and milk. In the same skillet, melt the butter over medium heat. Add the egg mixture and cook for 2-3 minutes, until the bottom is set. Using a spatula, lift the edges of the omelette and tilt the pan to allow the uncooked egg to flow underneath. Cook for 1-2 minutes, until the bottom is set. Spoon the mushroom and spinach mixture onto half of the omelette. Fold the other half of the omelette over the filling. Cook for 1-2 minutes, until the cheese is melted and the omelette is cooked through.", category: "hypocaloric")
spinach_mushroom_omelette.photo.attach(io: file, filename: "spinach_mushroom_omelette.jpg", content_type: "image/jpg")
spinach_mushroom_omelette.save!
spinach_mushroom_omelette.recipe_ingredients.create!(ingredient_id: mushrooms.id, quantity: 6)
spinach_mushroom_omelette.recipe_ingredients.create!(ingredient_id: spinach.id, quantity: 6)
spinach_mushroom_omelette.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)

puts "creating recipe Grilled Veggie Wrap"
file = URI.open("https://www.eatthis.com/wp-content/uploads/sites/4/2018/12/healthy-grilled-veggie-wrap.jpg?quality=82&strip=1")
veggie_wrap = Recipe.new(name: "Grilled Veggie Wrap", instructions: "1. To make the grilled veggie wrap: In a large skillet over medium heat, heat the olive oil. Add the onion and cook for 3-4 minutes, until translucent. Add the bell pepper and cook for 3-4 minutes, until tender. Add the zucchini and cook for 2-3 minutes, until tender. Season with salt and pepper to taste. Transfer the vegetables to a plate. In the same skillet, melt the butter over medium heat. Add the tortilla and cook for 1-2 minutes, until golden brown. Flip the tortilla and cook for 1-2 minutes, until golden brown. Spoon the vegetables onto the tortilla. Top with the cheese and fold the tortilla over the filling. Cook for 1-2 minutes, until the cheese is melted and the tortilla is golden brown.", category: "hypocaloric")
veggie_wrap.photo.attach(io: file, filename: "veggie_wrap.jpg", content_type: "image/jpg")
veggie_wrap.save!
veggie_wrap.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 6)
veggie_wrap.recipe_ingredients.create!(ingredient_id: zucchini.id, quantity: 6)
veggie_wrap.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 6)

#----------------------------------------------- traditional recipes ----------------------------------------------------

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

puts "creating recipe Salmon Rice Bowl"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2022/06/easy-Salmon-Rice-Bowl-recipe.jpg")
salmon_rice_bowl = Recipe.new(name: "Salmon Rice Bowl", instructions: "1. To make the salmon rice bowl: Place the cooked salmon in a bowl or shallow plate and remove the skin. Use your fork to flake the fish into smaller pieces. Evenly spread out the fish throughout the bowl.
  2. Add your leftover rice right over the salmon, then place an ice cube in the center, nestling it into the rice.
  3. Cover the bowl with parchment paper and heat in the microwave on high for 2 to 2 1/2 minutes.
  4. Remove the salmon bowl from the microwave and discard any remaining ice.
  5. Drizzle soy sauce, sesame oil, mayonnaise, and sriracha on top of the rice and mix with rice and salmon until fully combined.
  6. Top the salmon rice bowl with sliced avocado, sesame seeds, and more condiments. Enjoy! ❤️", category: "traditional")
salmon_rice_bowl.photo.attach(io: file, filename: "salmon_rice_bowl.jpg", content_type: "image/jpg")
salmon_rice_bowl.save!
salmon_rice_bowl.recipe_ingredients.create!(ingredient_id: salmon.id, quantity: 1)
salmon_rice_bowl.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
salmon_rice_bowl.recipe_ingredients.create!(ingredient_id: rice.id, quantity: 1)

#----------------------------------------------- vegetarian recipes ----------------------------------------------------
puts "creating recipe sandwich with veggies"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2014/04/Vegetarian-Sandwich-recipe-500x400.jpg")
veggie_sandwich = Recipe.new(name: "Sandiwch with veggies", instructions: "1. Mix ricotta with lemon zest, 2 teaspoons olive oil, salt and pepper and set aside.
  2. Toast the bread slices and place on a cutting board. Spread the ricotta mixture on both slices.
  3. Cut the avocado in half, remove the pit and cut each half into slices and arrange on bread.
  4. Spread halved tomatoes over the avocado slices, top with red onion.
  5. Top each sandwich with diced lemon, sesame seeds and poppy seeds. Pour a drizzle of olive oil , garnish with basil and serve. Enjoy!", category: "vegetarian")
veggie_sandwich.photo.attach(io: file, filename: "veggie_sandwich.jpg", content_type: "image/jpg")
veggie_sandwich.save!
veggie_sandwich.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
veggie_sandwich.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)
veggie_sandwich.recipe_ingredients.create!(ingredient_id: ricotta.id, quantity: 1)

puts "creating recipe vegetarian sandwich"
file = URI.open("https://images.immediate.co.uk/production/volatile/sites/30/2014/05/Epic-summer-salad-hub-2646e6e.jpg")
salad = Recipe.new(name: "Salad", instructions: "1. Assemble salad.", category: "vegetarian")
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!
salad.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
salad.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)
salad.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe stuffed zucchini"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2013/08/Recipe-for-Stuffed-Zucchini--500x400.jpg")
stuffed_zucchini = Recipe.new(name: "Stuffed Zucchini", instructions: "1. Wash all vegetables, cut the tops off the zucchini and scoop out the center of the squash. Take care not to cut through the outer skin of the zucchini. You can use a melon baller to scoop out the zucchini, but a small spoon will also work. Roughly chop the scooped zucchini flesh for the filling.
  2. Dice the eggplant and tomatoes. Peel and slice the onions. Crush the slice of bread to make crumbs. Chop the basil and add to vegetables. Gather everything in a large bowl and season with olive oil, salt and pepper.
  3. Fill zucchini with the vegetable mix, put the hat back on top and place zucchini in a baking dish.
  4. Line the bottom of the dish with crushed tomatoes, olive oil and chopped basil.
  5. Bake for 45 minutes at 360°F (180°C). Check to see if the zucchini is cooked. The flesh of the squash should pierce easily with a knife and become slightly translucent.", category: "vegetarian")
stuffed_zucchini.photo.attach(io: file, filename: "stuffed_zucchini.jpg", content_type: "image/jpg")
stuffed_zucchini.save!
stuffed_zucchini.recipe_ingredients.create!(ingredient_id: bread.id, quantity: 1)
stuffed_zucchini.recipe_ingredients.create!(ingredient_id: zucchini.id, quantity: 1)
stuffed_zucchini.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)

puts "creating recipe orzo pasta salad"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2023/07/greek-orzo-pasta-salad-recipe-500x400.jpg")
orzo_pasta = Recipe.new(name: "Orzo Pasta Salad", instructions: "1. To make the orzo pasta salad: Cook pasta according to package directions, in boiling salted water. Drain the orzo and toss with a little oil to prevent sticking. Arrange all the salad ingredients in a large salad bowl.
  2. Mix olive oil, lemon juice, and a little caper water in a jar, then pour over the orzo salad.
  3. Toss all ingredients together! Chill the orzo pasta salad before serving. Enjoy! ❤️", category: "vegetarian")
orzo_pasta.photo.attach(io: file, filename: "orzo_pasta.jpg", content_type: "image/jpg")
orzo_pasta.save!
orzo_pasta.recipe_ingredients.create!(ingredient_id: pasta.id, quantity: 1)
orzo_pasta.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 1)
orzo_pasta.recipe_ingredients.create!(ingredient_id: cherry_tomatoes.id, quantity: 1)

puts "creating recipe peanut butter noodles"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2022/05/peanut-butter-noodles-recipe-2-500x400.jpg")
pb_noodles = Recipe.new(name: "Peanut Butter Noodles", instructions: "1. To make the peanut butter noodles: Bring a large pot of water to a boil and cook the rice noodles according to package instructions.
  2. Add minced garlic to a saute pan with 1 tablespoon of olive oil. Saute garlic over low heat for 2-3 minutes or until golden brown. Add in the grated ginger and saute for 1-2 more minutes.
  3. Remove the skillet from heat and add in all remaining sauce ingredients: 1/3 cup of hot water, peanut butter, tamari, rice vinegar, sesame oil, sriracha, and maple syrup, and whisk together until smooth. Add more water as needed to reach your desired consistency.
  4. Taste and adjust seasoning to your liking with more tamari, sriracha, or other seasonings.
  5. Add half of the sauce to cooked rice noodles and mix together. Adjust the amount of sauce as needed
  6. Divide peanut butter noodles into bowls or plates and serve with crushed peanuts, scallions, and red pepper flakes and enjoy! ❤️", category: "vegetarian")
pb_noodles.photo.attach(io: file, filename: "pb_noodles.jpg", content_type: "image/jpg")
pb_noodles.save!
pb_noodles.recipe_ingredients.create!(ingredient_id: pasta.id, quantity: 1)
pb_noodles.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 1)
pb_noodles.recipe_ingredients.create!(ingredient_id: garlic.id, quantity: 1)

puts "creating recipe Thai Coconut Soup With Mushrooms"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2022/10/thai-coconut-mushroom-soup-recipe-1-500x400.jpg")
coconut_soup = Recipe.new(name: "Thai Coconut Soup With Mushrooms", instructions: "1. To make the Thai coconut soup: Heat oil in a large pot or Dutch oven over medium heat. Add ginger, curry paste, and lemongrass; cook and stir in the hot oil for 1 minute.
  2. Gradually stir in the vegetable broth, then stir in fish sauce; reduce heat to low and simmer the soup for 15 minutes.
  3. Add coconut milk and sliced mushrooms; cook and stir until mushrooms are soft, about 5 minutes.
  4. Stir in lime juice; season with salt and garnish with cilantro.  Serve the Thai coconut soup immediately. Enjoy! ❤️", category: "vegetarian")
coconut_soup.photo.attach(io: file, filename: "coconut_soup.jpg", content_type: "image/jpg")
coconut_soup.save!
coconut_soup.recipe_ingredients.create!(ingredient_id: coconut_milk.id, quantity: 1)
coconut_soup.recipe_ingredients.create!(ingredient_id: mushrooms.id, quantity: 1)
coconut_soup.recipe_ingredients.create!(ingredient_id: lime_juice.id, quantity: 1)

#----------------------------------------------- vegan recipes ----------------------------------------------------

puts "creating recipe vegan burger"
file = URI.open("https://lovingitvegan.com/wp-content/uploads/2022/09/Vegan-Burger-Square.jpg")
vegan_burger = Recipe.new(name: "Vegan Burger", instructions: "1. Assemble burger.", category: "vegan")
vegan_burger.photo.attach(io: file, filename: "vegan-burger.jpg", content_type: "image/jpg")
vegan_burger.save!
vegan_burger.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
vegan_burger.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)
vegan_burger.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)
vegan_burger.recipe_ingredients.create!(ingredient_id: bread.id, quantity: 1)

puts "creating recipe Cucumber Avocado Salad"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2021/08/Cucumber-Avocado-Salad-recipe.jpg")
cucumber_avo_salad = Recipe.new(name: "Cucumber Avocado Salad", instructions: "1. To make the avocado cucumber salad: Combine all of the salad ingredients together in a salad bowl.
  2. In a small mason jar, mix together the dressing ingredients to combine well, and pour over the avocado cucumber salad. Season with extra salt, if desired. Serve the avocado cucumber salad immediately or chill in the refrigerator until serving. Enjoy!", category: "vegan")
cucumber_avo_salad.photo.attach(io: file, filename: "cucumber_avo_salad.jpg", content_type: "image/jpg")
cucumber_avo_salad.save!
cucumber_avo_salad.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)
cucumber_avo_salad.recipe_ingredients.create!(ingredient_id: cucumber.id, quantity: 1)
cucumber_avo_salad.recipe_ingredients.create!(ingredient_id: lime_juice.id, quantity: 1)
cucumber_avo_salad.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 1)

puts "creating recipe Vegan Overnight Oats"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2018/02/vegan-overnight-oatmeal-recipe.jpg")
overnight_oats = Recipe.new(name: "Overnight Oats", instructions: "1. Combine all ingredients in an airtight container and mix well. Cover, and refrigerate overnight.
  2. Serve cold with additional berries, almonds and mixed seeds and a good drizzle of maple syrup. Enjoy!", category: "vegan")
overnight_oats.photo.attach(io: file, filename: "overnight_oats.jpg", content_type: "image/jpg")
overnight_oats.save!
overnight_oats.recipe_ingredients.create!(ingredient_id: oats.id, quantity: 1)
overnight_oats.recipe_ingredients.create!(ingredient_id: coconut_milk.id, quantity: 1)
overnight_oats.recipe_ingredients.create!(ingredient_id: berries.id, quantity: 1)

puts "creating recipe Vegetable Soup"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2022/01/Vegetable-Soup-recipe-2.jpg")
vegetable_soup = Recipe.new(name: "Vegetable Soup", instructions: "1. To make the vegetable soup: In a large stockpot or Dutch oven, add the olive oil over medium heat and sauté the onions, celery, carrot, and garlic for 4-5 minutes.
  2. Add in the rest of the ingredients: diced tomatoes, diced potatoes, and zucchini. Cover with vegetable broth, add salt, pepper, thyme, and bay leaves.
  3. Bring the vegetable soup to a boil, then reduce to a simmer and cook covered for 30 minutes or until potatoes are almost fully tender.
  4. Add corn and cook 5 minutes longer. Adjust seasoning with salt and pepper. Sprinkle the vegetable soup with fresh chopped parsley and serve immediately.", category: "vegan")
vegetable_soup.photo.attach(io: file, filename: "vegetable_soup.jpg", content_type: "image/jpg")
vegetable_soup.save!
vegetable_soup.recipe_ingredients.create!(ingredient_id: olive_oil.id, quantity: 1)
vegetable_soup.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)
vegetable_soup.recipe_ingredients.create!(ingredient_id: garlic.id, quantity: 1)
vegetable_soup.recipe_ingredients.create!(ingredient_id: zucchini.id, quantity: 1)
vegetable_soup.recipe_ingredients.create!(ingredient_id: tomato.id, quantity: 1)

puts "creating recipe Veggie Fried Rice"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2022/04/Veggie-Fried-Rice-recipe-1.jpg")
veggie_rice = Recipe.new(name: "Veggie Fried Rice", instructions: "1. To make the vegetable fried rice: In a wok or deep skillet, heat up the oil over high heat and cook carrots, onions, and garlic until onions are translucent. In the meantime, beat the eggs in a bowl.
  2. Add bell peppers and broccoli florets and cook for an additional 3 minutes. Push all of the cooked vegetables to the side of the pan.
  3. Pour pour the beaten eggs into the cleared half of the pan. Scramble the eggs and combine them with the rest of the veggies.
  4. Add edamame (or peas), corn, rice, soy sauce, sesame oil, and pepper. Mix well and let the rice cook until slightly crispy.
  5. Sprinkle the veggie fried rice with chopped scallions or cilantro. Serve immediately – Enjoy!", category: "vegan")
veggie_rice.photo.attach(io: file, filename: "veggie_rice.jpg", content_type: "image/jpg")
veggie_rice.save!
veggie_rice.recipe_ingredients.create!(ingredient_id: garlic.id, quantity: 1)
veggie_rice.recipe_ingredients.create!(ingredient_id: onion.id, quantity: 1)
veggie_rice.recipe_ingredients.create!(ingredient_id: rice.id, quantity: 1)

puts "creating recipe Spring Rolls"
file = URI.open("https://www.eatwell101.com/wp-content/uploads/2016/05/best-spring-roll-recipe.jpg")
spring_rolls = Recipe.new(name: "Spring Rolls", instructions: "1. Soak rice paper sheets in warm water until soft. About 30 seconds to one minute. Process one sheet at a time otherwise they will stick all together.
  2. Lay a rice paper sheet out on a clean surface and place a small amount of each ingredient in the center. Play with different combinations of ingredients, add  lime juice and chili sauce if you like.
  3. Fold both sides over the filling, and gently roll up. Serve with your favorite spicy hot dipping sauce and enjoy!", category: "vegan")
spring_rolls.photo.attach(io: file, filename: "spring_rolls.jpg", content_type: "image/jpg")
spring_rolls.save!
spring_rolls.recipe_ingredients.create!(ingredient_id: cucumber.id, quantity: 1)
spring_rolls.recipe_ingredients.create!(ingredient_id: avocado.id, quantity: 1)

#------------------------------------------------------------------------------------------------------------------------

# Mealplans
puts "creating mealplan 1"
mealplan1 = Mealplan.new(user_id: user1.id, initial_date: Date.today, days: 7, category: "hypocaloric")
mealplan1.save!
# TODO
# refactor this
mealplan1.mealplan_recipes.create!(recipe: teriyaki_salmon_bowl)
mealplan1.mealplan_recipes.create!(recipe: tuscan_salmon)
mealplan1.mealplan_recipes.create!(recipe: honey_garlic_chicken)
mealplan1.mealplan_recipes.create!(recipe: pork_rice_bowl)
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
