class Lazy
  # Creates and returns a client instance. Configured to work on a specific server.
  # Params:
  # +host+:: The host this Lazy client will use. Example: https://lazy.herokuapp.com
  def initialize(host:)
    @host = host
  end

  # Adds a given phrase to the category and trains the server.
  # Params:
  # +phrase+:: string of characters representing a meaningful phrase.
  # +category+:: a string representing the category to put the phrase in.
  def learn(phrase:, category:)

  end

  # Forgets a given phrase which is present in the given category.
  # Params:
  # +phrase+:: string of characters representing a phrase which is present in the server.
  # +category+:: a string representing the category to remove the phrase from.
  def forget(phrase:, category:)

  end

  # Adds a response to the given category
  # Params:
  # +category+:: a string representing the category to add a response to.
  # +response+:: string of characters to put as response to a category.
  def add_response(category:, response:)

  end

  # Analyzes and returns a random response for the given phrase.
  # Params:
  # +phrase+:: string of characters representing a meaningful phrase.
  def query(phrase:)

  end

  # Returns all the trained categories from the server.
  def get_categories()

  end

  # Instructs the server to save the trained data.
  def save()

  end
  
  # Instructs the server to load the trained data.
  def load()

  end

  # Gets responses for a specific category.
  def get_responses(category:)

  end
end
