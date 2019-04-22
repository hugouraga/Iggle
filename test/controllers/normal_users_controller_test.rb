require 'test_helper'

class NormalUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @normal_user = normal_users(:one)
  end

  test "should get index" do
    get normal_users_url
    assert_response :success
  end

  test "should get new" do
    get new_normal_user_url
    assert_response :success
  end

  test "should create normal_user" do
    assert_difference('NormalUser.count') do
      post normal_users_url, params: { normal_user: { email: @normal_user.email, name: @normal_user.name, password_digest: @normal_user.password_digest, phone: @normal_user.phone } }
    end

    assert_redirected_to normal_user_url(NormalUser.last)
  end

  test "should show normal_user" do
    get normal_user_url(@normal_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_normal_user_url(@normal_user)
    assert_response :success
  end

  test "should update normal_user" do
    patch normal_user_url(@normal_user), params: { normal_user: { email: @normal_user.email, name: @normal_user.name, password_digest: @normal_user.password_digest, phone: @normal_user.phone } }
    assert_redirected_to normal_user_url(@normal_user)
  end

  test "should destroy normal_user" do
    assert_difference('NormalUser.count', -1) do
      delete normal_user_url(@normal_user)
    end

    assert_redirected_to normal_users_url
  end
end
