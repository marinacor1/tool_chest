require 'test_helper'

class UserCanLoginToPageAndCreateNewLoginTest < ActionDispatch::IntegrationTest
  test "user can create a login" do
    visit new_user_path
    fill_in "Username", with: "marinacor"
    fill_in "Email", with: "marina@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create Account"

    assert_equal users_path, current_path
  end

  test "user will not create login with no name" do
    visit new_user_path

    # fill_in "Username", with: nil
    fill_in "Email", with: "marina@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create Account"
    assert_equal users_path, current_path
    assert page.has_content?("Incorrect Login")
  end
end
