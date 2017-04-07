require 'minitest/autorun'
require 'webmock/test_unit'
require_relative 'helper.rb'

class LazyTest < Minitest::Test
  def test_categories
    uri = URI(TEST_API_DOMAIN + "/categories");
    response = Net::HTTP.get(uri);
    assert_equal("Test response!", response)
    WebMock.assert_requested(STUB_CATEGORIES)
  end
end
