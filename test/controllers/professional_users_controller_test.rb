require 'test_helper'

class ProfessionalUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_user = professional_users(:one)
  end

  test "should get index" do
    get professional_users_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_user_url
    assert_response :success
  end

  test "should create professional_user" do
    assert_difference('ProfessionalUser.count') do
      post professional_users_url, params: { professional_user: { description: @professional_user.description, document: @professional_user.document, email: @professional_user.email, facebook: @professional_user.facebook, instagram: @professional_user.instagram, name: @professional_user.name, password_digest: @professional_user.password_digest, phone: @professional_user.phone, profession: @professional_user.profession } }
    end

    assert_redirected_to professional_user_url(ProfessionalUser.last)
  end

  test "should show professional_user" do
    get professional_user_url(@professional_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_user_url(@professional_user)
    assert_response :success
  end

  test "should update professional_user" do
    patch professional_user_url(@professional_user), params: { professional_user: { description: @professional_user.description, document: @professional_user.document, email: @professional_user.email, facebook: @professional_user.facebook, instagram: @professional_user.instagram, name: @professional_user.name, password_digest: @professional_user.password_digest, phone: @professional_user.phone, profession: @professional_user.profession } }
    assert_redirected_to professional_user_url(@professional_user)
  end

  test "should destroy professional_user" do
    assert_difference('ProfessionalUser.count', -1) do
      delete professional_user_url(@professional_user)
    end

    assert_redirected_to professional_users_url
  end
end
