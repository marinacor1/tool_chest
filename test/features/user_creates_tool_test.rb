require "test_helper"

class UserCreatesToolTest < ActionDispatch::IntegrationTest
  test "user can create a tool" do
    # a user will go to the new form using route helper
    visit new_tool_path
    #they will enter data in each of the fields
    fill_in "Name", with: "Screwdriver"
    fill_in "Price", with: "10.99"
    fill_in "Quantity", with: "10"
    #they will submit that data
    click_button "Create Tool"
    #then they will be taken to that tool's show page and
    assert_equal tool_path(Tool.last.id), current_path
    #expect to see the data that was submitted

    within(".tool_info") do
      assert page.has_content?("Screwdriver")
      assert page.has_content?("10.99")
      assert page.has_content?("10")
    end

  end
end
