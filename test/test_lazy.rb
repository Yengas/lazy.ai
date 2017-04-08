require 'minitest/autorun'
require 'lazy.ai'

class LazyTest < Minitest::Test
  def setup
    @lazy = Lazy.new(host: "https://lazy.localhost")
  end

  def test_initialize
    assert_raises(ArgumentError){ Lazy.new() } 
    assert_raises(ArgumentError){ Lazy.new(host: " ") }
    assert_raises(ArgumentError){ Lazy.new(host: 5) }
    assert_raises(ArgumentError){ Lazy.new(host: "asd") } 
  end
  
  def test_learn
    assert_raises(ArgumentError){ @lazy.learn(category: "test") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: "test") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: "", category: "") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: "test", category: "") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: " ", category: "") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: "", category: "test") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: "", category: " ") } 
    assert_raises(ArgumentError){ @lazy.learn(phrase: " ", category: " ") } 
  end

  def test_forget
    assert_raises(ArgumentError){ @lazy.forget(category: "test") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: "test") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: "", category: "") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: "test", category: "") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: " ", category: "") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: "", category: "test") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: "", category: " ") } 
    assert_raises(ArgumentError){ @lazy.forget(phrase: " ", category: " ") } 
  end

  def test_add_response
    assert_raises(ArgumentError){ @lazy.add_response(category: "test") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: "test") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: "", category: "") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: "test", category: "") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: " ", category: "") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: "", category: "test") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: "", category: " ") } 
    assert_raises(ArgumentError){ @lazy.add_response(phrase: " ", category: " ") } 
  end

  def test_query
    assert_raises(ArgumentError){ Lazy.new() } 
    assert_raises(ArgumentError){ Lazy.new(phrase: " ") }
    assert_raises(ArgumentError){ Lazy.new(phrase: 5) }
  end

  def test_get_responses
    assert_raises(ArgumentError){ Lazy.new() } 
    assert_raises(ArgumentError){ Lazy.new(category: " ") }
    assert_raises(ArgumentError){ Lazy.new(category: 5) }
  end

end
