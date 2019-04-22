require "application_system_test_case"

class ProfessionalUsersTest < ApplicationSystemTestCase
  setup do
    @professional_user = professional_users(:one)
  end

  test "visiting the index" do
    visit professional_users_url
    assert_selector "h1", text: "Professional Users"
  end

  test "creating a Professional user" do
    visit professional_users_url
    click_on "New Professional User"

    fill_in "Description", with: @professional_user.description
    fill_in "Document", with: @professional_user.document
    fill_in "Email", with: @professional_user.email
    fill_in "Facebook", with: @professional_user.facebook
    fill_in "Instagram", with: @professional_user.instagram
    fill_in "Name", with: @professional_user.name
    fill_in "Password digest", with: @professional_user.password_digest
    fill_in "Phone", with: @professional_user.phone
    fill_in "Profession", with: @professional_user.profession
    click_on "Create Professional user"

    assert_text "Professional user was successfully created"
    click_on "Back"
  end

  test "updating a Professional user" do
    visit professional_users_url
    click_on "Edit", match: :first

    fill_in "Description", with: @professional_user.description
    fill_in "Document", with: @professional_user.document
    fill_in "Email", with: @professional_user.email
    fill_in "Facebook", with: @professional_user.facebook
    fill_in "Instagram", with: @professional_user.instagram
    fill_in "Name", with: @professional_user.name
    fill_in "Password digest", with: @professional_user.password_digest
    fill_in "Phone", with: @professional_user.phone
    fill_in "Profession", with: @professional_user.profession
    click_on "Update Professional user"

    assert_text "Professional user was successfully updated"
    click_on "Back"
  end

  test "destroying a Professional user" do
    visit professional_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Professional user was successfully destroyed"
  end
end
