client = OpenAI::Client.new(
  access_token: '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',
  uri_base: 'https://api.openai.com/',
  request_timeout: 240
)



client.chat(
  parameters: {
    model: "gpt-3.5-turbo",
    messages: [ role: "user", content: "Dame una receta para 7 dias, desayuno, almuerzo y cena ordenada por dia"],
    temperature: 0.7
  }
)
