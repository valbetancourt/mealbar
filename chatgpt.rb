client = OpenAI::Client.new(
  access_token: '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',
  uri_base: 'https://api.openai.com/',
  request_timeout: 240
)

client.chat(
  parameters: {
    model: "gpt-3.5-turbo",
    messages: [ role: "user", content: "Create a 7-day lunch plan to store in a database. Separate in one column the recipe response and include another column with the ingredient list to create the recipe. Finally, in another column make a shopping list which adds up all the ingredient quantities for groceries."],
    temperature: 0.7
  }
)

p response
