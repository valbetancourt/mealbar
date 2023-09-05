require "test_helper"

class ShoppinglistsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shoppinglists_show_url
    assert_response :success
  end
end
