require "test_helper"

class ExpressionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expressions_index_url
    assert_response :success
  end

  test "should get show" do
    get expressions_show_url
    assert_response :success
  end

  test "should get update" do
    get expressions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get expressions_destroy_url
    assert_response :success
  end
end
