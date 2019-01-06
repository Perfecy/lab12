require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "can see the welcome page" do
    get "/session/login"
    assert_response :success
    post "/session/create",
          params: { "email"=>"a@a.a", "password"=>"qwerqwer" }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
