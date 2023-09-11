class Ai
    def initialize
      client = OpenAI::Client.new(
        access_token: ENV["CHATGPT_API_KEY"],
        uri_base: 'https://api.openai.com/',
        request_timeout: 240
      )
    end
    def prompt(like, dislike)
      response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo",
          messages: [ role: "user", content: "Create a 10 Recipes plan with the following preferences: take in consideration my tastes: #{like} and avoid #{dislike}. The content  must be in a JSON object format with the following keys: recipeName, ingredients, quantities and instructions."],
          temperature: 0.7
        }
      )
    end
    # keys recipeName, ingredients, quantities and instructions
    # data = response["choices"][0]["message"]["content"]
    # data_parse = JSON.parse(data)
    # recipes = data_parse["recipes"]
    # @new_recipe_name = recipes.map do |recipe|
    #   recipe["recipeName"]
    # end
    # @new_recipe_ingredients = recipes.map do |recipe|
    #   recipe["ingredients"]
    # end
    # @new_recipe_quantities = recipes.map do |recipe|
    #   recipe["quantities"]
    # end
    # @new_recipe_instructions = recipes.map do |recipe|
    #   recipe["instructions"]
    # end
end
