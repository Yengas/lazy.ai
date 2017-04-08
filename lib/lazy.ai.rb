require 'uri'

class Lazy
  # Creates and returns a client instance. Configured to work on a specific server.
  # Params:
  # +host+:: The host this Lazy client will use. Example: https://lazy.herokuapp.com
  def initialize(host:)
    raise ArgumentError.new("Host must be a string!") unless host.is_a? String and !host.strip.empty?
    raise ArgumentError.new("Host must be a valid uri.") unless host =~ URI::regexp
    @host = host
  end

  # Adds a given phrase to the category and trains the server.
  # Path: /learn
  # Params:
  # +phrase+:: string of characters representing a meaningful phrase.
  # +category+:: a string representing the category to put the phrase in.
  def learn(phrase:, category:)
    raise ArgumentError.new("Phrase and category must be strings!") unless [phrase, category].all?{ |p| p.is_a? String and !p.strip.empty? }
    
  end

  # Forgets a given phrase which is present in the given category.
  # Path: /forget
  # Params:
  # +phrase+:: string of characters representing a phrase which is present in the server.
  # +category+:: a string representing the category to remove the phrase from.
  def forget(phrase:, category:)
    raise ArgumentError.new("Phrase and category must be strings!") unless [phrase, category].all?{ |p| p.is_a? String and !p.strip.empty? }

  end

  # Adds a response to the given category
  # Path: /response
  # Params:
  # +category+:: a string representing the category to add a response to.
  # +response+:: string of characters to put as response to a category.
  def add_response(category:, response:)
    raise ArgumentError.new("Response and category must be valid strings!") unless [response, category].all?{ |p| p.is_a? String and !p.strip.empty? }

  end

  # Analyzes and returns a random response for the given phrase.
  # Path: /query
  # Method: POST
  # Params:
  # +phrase+:: string of characters representing a meaningful phrase.
  def query(phrase:)
    raise ArgumentError.new("Phrase must be a string!") unless phrase.is_a? String and !phrase.strip.empty?

  end

  # Gets responses for a specific category.
  # Path: /responses/:category
  # Method: GET
  def get_responses(category:)
    raise ArgumentError.new("Category must be a string!") unless category.is_a? String and !category.strip.empty?
  end

  # Returns all the trained categories from the server.
  # Path: /responses/:category
  # Method: GET
  def get_categories()

  end

  # Instructs the server to save the trained data.
  # Path: /save
  # Method: GET
  def save()

  end
  
  # Instructs the server to load the trained data.
  # Path: /load
  # Method: GET
  def load()

  end

end
