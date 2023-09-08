# Con access key de Juan
client = OpenAI::Client.new(
  access_token: '',
  uri_base: 'https://api.openai.com/',
  request_timeout: 240
)

client.chat(
  parameters: {
    model: "gpt-3.5-turbo",
    messages: [ role: "user", content: "Create a 7-day lunch meal plan. Each day should include a recipe with the following details: recipe name, ingredients, quantities, instructions, and category. Additionally, provide a shopping list with the ingredients and quantities needed for the entire week."],
    temperature: 0.7
  }
)

# client = OpenAI::Client.new(
#   access_token: '',
#   uri_base: 'https://api.openai.com/',
#   request_timeout: 240
# )

# client.chat(
#   parameters: {
#     model: "gpt-3.5-turbo",
#     messages: [ role: "user", content: "Create a 7-day lunch plan to store in a database. Separate in one column the recipe response and include another column with the ingredient list to create the recipe. Finally, in another column make a shopping list which adds up all the ingredient quantities for groceries."],
#     temperature: 0.7
#   }
# )

# p response

# First prompt
# "Create a 7-day lunch plan to store in a database. Separate in one column the recipe response and include another column with the ingredient list to create the recipe. Finally, in another column make a shopping list which adds up all the ingredient quantities for groceries."

# Second prompt
# "Create a 7-day lunch meal plan. Each day should include a recipe with the following details: recipe name, ingredients, quantities, instructions, and category. Additionally, provide a shopping list with the ingredients and quantities needed for the entire week."
