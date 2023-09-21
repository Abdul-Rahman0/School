require "test_helper"

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get portal_info_url
    assert_response :success
  end
end
