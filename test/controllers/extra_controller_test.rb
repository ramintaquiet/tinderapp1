require 'test_helper'

class ExtraControllerTest < ActionDispatch::IntegrationTest
  test "should get one" do
    get extra_one_url
    assert_response :success
  end

  test "should get two" do
    get extra_two_url
    assert_response :success
  end

  test "should get three" do
    get extra_three_url
    assert_response :success
  end

end
