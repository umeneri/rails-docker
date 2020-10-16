require 'test_helper'

class RegisterationControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get registeration_register_url
    assert_response :success
  end

end
