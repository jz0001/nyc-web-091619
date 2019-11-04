require 'test_helper'

class AppearancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appearances_index_url
    assert_response :success
  end

end
