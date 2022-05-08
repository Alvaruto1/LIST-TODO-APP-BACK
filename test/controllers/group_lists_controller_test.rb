require "test_helper"

class GroupListsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get group_lists_show_url
    assert_response :success
  end

  test "should get update" do
    get group_lists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get group_lists_destroy_url
    assert_response :success
  end
end
