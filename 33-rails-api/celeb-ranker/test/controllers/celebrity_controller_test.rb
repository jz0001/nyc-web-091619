require 'test_helper'

class CelebrityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get celebrity_index_url
    assert_response :success
  end

  test "should get create" do
    get celebrity_create_url
    assert_response :success
  end

  test "should get show" do
    get celebrity_show_url
    assert_response :success
  end

  test "should get update" do
    get celebrity_update_url
    assert_response :success
  end

  test "should get destroy" do
    get celebrity_destroy_url
    assert_response :success
  end

end
