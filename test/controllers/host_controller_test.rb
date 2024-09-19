require "test_helper"

class HostControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get host_top_url
    assert_response :success
  end
end
