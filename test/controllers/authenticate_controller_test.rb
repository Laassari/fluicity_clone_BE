require 'test_helper'

class AuthenticateControllerTest < ActionDispatch::IntegrationTest

  test "should get sign_up" do
    get authenticate_sign_up_url
    assert_response :success
  end

end
