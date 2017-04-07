# lazy.ai
Lazy.ai is the ruby client for training the [lazy](https://github.com/cagataycali/lazy) chatbot.

## Usage
```ruby
lazy = Lazy.new(host: "")

puts lazy.learn(phrase: "hello", category: "greetings")

puts lazy.query(phrase: "hello dude!")

puts lazy.add_response(response: "Hello there", category: "greetings")

puts lazy.get_response(categry: "greetings")

puts lazy.get_categories()
```
