require "test_helper"

class ShareControllerTest < ActionDispatch::IntegrationTest
  test "should get share" do
    get share_share_url
    assert_response :success
  end
end
