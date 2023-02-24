require "http"
system "clear"

puts "Welcome to the dictionary! Type a word of your choosing to get a definition."

word = gets.chomp 

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=APIKEYGOESHERE")
response_2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=APIKEYGOESHERE
")

definition = response.parse(:json)
pronunciation = response_2.parse(:json)

# pp "Your word means: #{definition[0]["text"]}. The top example of a #{definition[0]["text"]} is: #{definition[0]["exampleUses"]}."

pp pronunciation



