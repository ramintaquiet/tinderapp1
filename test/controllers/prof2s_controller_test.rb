require 'test_helper'

class Prof2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prof2 = prof2s(:one)
  end

  test "should get index" do
    get prof2s_url
    assert_response :success
  end

  test "should get new" do
    get new_prof2_url
    assert_response :success
  end

  test "should create prof2" do
    assert_difference('Prof2.count') do
      post prof2s_url, params: { prof2: { atype: @prof2.atype, name: @prof2.name, user_id: @prof2.user_id } }
    end

    assert_redirected_to prof2_url(Prof2.last)
  end

  test "should show prof2" do
    get prof2_url(@prof2)
    assert_response :success
  end

  test "should get edit" do
    get edit_prof2_url(@prof2)
    assert_response :success
  end

  test "should update prof2" do
    patch prof2_url(@prof2), params: { prof2: { atype: @prof2.atype, name: @prof2.name, user_id: @prof2.user_id } }
    assert_redirected_to prof2_url(@prof2)
  end

  test "should destroy prof2" do
    assert_difference('Prof2.count', -1) do
      delete prof2_url(@prof2)
    end

    assert_redirected_to prof2s_url
  end
end
