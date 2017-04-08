require 'minitest/autorun'
require 'webmock/test_unit'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

TEST_API_DOMAIN = "https://lazy.herokuapp.com"
# Stub categories
STUB_CATEGORIES = WebMock.stub_request(:get, TEST_API_DOMAIN + "/categories").to_return(:body => "Test response!");

class LazyStubTest < Minitest::Test
  def test_categories
    uri = URI(TEST_API_DOMAIN + "/categories");
    response = Net::HTTP.get(uri);
    assert_equal("Test response!", response)
    WebMock.assert_requested(STUB_CATEGORIES)
  end
end
