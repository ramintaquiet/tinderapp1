require 'test_helper'

class NologControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get nolog_update_url
    assert_response :success
  end

end
