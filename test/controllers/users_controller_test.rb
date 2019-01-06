require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

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
