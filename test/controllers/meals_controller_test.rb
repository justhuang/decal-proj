require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get meals_list_url
    assert_response :success
  end

  test "should get add" do
    get meals_add_url
    assert_response :success
  end

end
