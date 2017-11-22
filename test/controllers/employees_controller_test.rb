require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  test "should get assign" do
    get employees_assign_url
    assert_response :success
  end

end
