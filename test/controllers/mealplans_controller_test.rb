require "test_helper"

class MealplansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mealplans_index_url
    assert_response :success
  end

  test "should get new" do
    get mealplans_new_url
    assert_response :success
  end

  test "should get create" do
    get mealplans_create_url
    assert_response :success
  end

  test "should get edit" do
    get mealplans_edit_url
    assert_response :success
  end

  test "should get show" do
    get mealplans_show_url
    assert_response :success
  end

  test "should get update" do
    get mealplans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mealplans_destroy_url
    assert_response :success
  end
end
