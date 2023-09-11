require "test_helper"

class PreferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get preferences_index_url
    assert_response :success
  end

  test "should get create" do
    get preferences_create_url
    assert_response :success
  end

  test "should get delete" do
    get preferences_delete_url
    assert_response :success
  end
end
