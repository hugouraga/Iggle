require "application_system_test_case"

class NormalUsersTest < ApplicationSystemTestCase
  setup do
    @normal_user = normal_users(:one)
  end

  test "visiting the index" do
    visit normal_users_url
    assert_selector "h1", text: "Normal Users"
  end

  test "creating a Normal user" do
    visit normal_users_url
    click_on "New Normal User"

    fill_in "Email", with: @normal_user.email
    fill_in "Name", with: @normal_user.name
    fill_in "Password digest", with: @normal_user.password_digest
    fill_in "Phone", with: @normal_user.phone
    click_on "Create Normal user"

    assert_text "Normal user was successfully created"
    click_on "Back"
  end

  test "updating a Normal user" do
    visit normal_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @normal_user.email
    fill_in "Name", with: @normal_user.name
    fill_in "Password digest", with: @normal_user.password_digest
    fill_in "Phone", with: @normal_user.phone
    click_on "Update Normal user"

    assert_text "Normal user was successfully updated"
    click_on "Back"
  end

  test "destroying a Normal user" do
    visit normal_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Normal user was successfully destroyed"
  end
end
