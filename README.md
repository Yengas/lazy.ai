# lazy.ai
Lazy.ai is the ruby client for training the [lazy](https://github.com/cagataycali/lazy) chatbot.

## Usage
```ruby
# Change with a valid lazy chatbot server url.
lazy = Lazy.new(host: "lazy.herokuapp.com")

puts lazy.learn(phrase: "hello", category: "greetings")

puts lazy.add_response(response: "Hello there", category: "greetings")

puts lazy.query(phrase: "hello dude!")

puts lazy.get_responses(category: "greetings")

puts lazy.get_categories()

puts lazy.save()

puts lazy.load()
```
