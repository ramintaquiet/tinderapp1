require 'test_helper'

class FavoControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get favo_update_url
    assert_response :success
  end

end
