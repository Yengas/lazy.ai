require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

TEST_API_DOMAIN = "https://lazy.herokuapp.com"
# Stub categories
STUB_CATEGORIES = WebMock.stub_request(:get, TEST_API_DOMAIN + "/categories").to_return(:body => "Test response!");
