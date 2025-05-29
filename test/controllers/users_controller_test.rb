require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    sign_in users(:one) # potrzebny helper Devise do testów kontrolerów
    get user_url(users(:one))
    assert_response :success
  end
end
