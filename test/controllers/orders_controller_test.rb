require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get list_undelivered_orders" do
    get orders_list_undelivered_orders_url
    assert_response :success
  end

  test "should get add" do
    get orders_add_url
    assert_response :success
  end

  test "should get list_my_orders" do
    get orders_list_my_orders_url
    assert_response :success
  end

  test "should get mark_as_delivered" do
    get orders_mark_as_delivered_url
    assert_response :success
  end

end
