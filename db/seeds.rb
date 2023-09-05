# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Ingredients

salmon = Ingredient.create(name: "Salmon")
rice = Ingredient.create(name: "Rice")
rice_vinegar = Ingredient.create(name: "Rice Vinegar")
salt = Ingredient.create(name: "Salt")
honey = Ingredient.create(name: "Honey")
brown_sugar = Ingredient.create(name: "Brown Sugar")
onions = Ingredient.create(name: "Onions")
avocado = Ingredient.create(name: "Avocado")

# Recipes

teriyaki_salmon_bowl = Recipe.create(name: "Teriyaki Salmon Bowl", description: "A delicious salmon bowl with teriyaki sauce", instructions: "1. Cook rice. 2. Cook salmon. 3. Make teriyaki sauce. 4. Assemble bowl.", image_url: "")
