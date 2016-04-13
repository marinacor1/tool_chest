require "test_helper"

class UserCreatesToolTest < ActionDispatch::IntegrationTest
  test "user can create a tool" do

    user =  User.create(username: "m", email: "m", password: "m")
    visit new_user_tool_path(user)

    fill_in "Name", with: "Screwdriver"
    fill_in "Price", with: "10.99"
    fill_in "Quantity", with: "10"
    click_button "Create Tool"

    within(".tool_info") do
      assert page.has_content?("Screwdriver")
      assert page.has_content?("10.99")
      assert page.has_content?("10")
    end

  end
end
