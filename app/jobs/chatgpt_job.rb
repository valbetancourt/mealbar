class ChatgptJob < ApplicationJob
  queue_as :default

  def perform(like, dislike)
    # Do something later
    @client = Ai.new
    prompt = @client.prompt(like, dislike)
    data = prompt["choices"][0]["message"]["content"]

    data_parse = JSON.parse(data)

    recipes = data_parse["recipes"]
    @new_recipe_name = recipes.map do |recipe|
      recipe["recipeName"]
    end
    @new_recipe_ingredients = recipes.map do |recipe|
      recipe["ingredients"]
    end
    @new_recipe_quantities = recipes.map do |recipe|
      recipe["quantities"]
    end
    @new_recipe_instructions = recipes.map do |recipe|
      recipe["instructions"].split("\n")
    end
    Rails.cache.write("new_recipe_name", @new_recipe_name)
  end
end
