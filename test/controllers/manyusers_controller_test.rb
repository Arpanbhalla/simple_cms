require 'test_helper'

class ManyusersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manyusers_index_url
    assert_response :success
  end

  test "should get show" do
    get manyusers_show_url
    assert_response :success
  end

  test "should get edit" do
    get manyusers_edit_url
    assert_response :success
  end

  test "should get update" do
    get manyusers_update_url
    assert_response :success
  end

  test "should get delete" do
    get manyusers_delete_url
    assert_response :success
  end

end
