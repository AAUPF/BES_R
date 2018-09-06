require "application_system_test_case"

class ResourceManagement7sTest < ApplicationSystemTestCase
  setup do
    @resource_management7 = resource_management7s(:one)
  end

  test "visiting the index" do
    visit resource_management7s_url
    assert_selector "h1", text: "Resource Management7s"
  end

  test "creating a Resource management7" do
    visit resource_management7s_url
    click_on "New Resource Management7"

    fill_in "Percentage", with: @resource_management7.Percentage
    fill_in "Revenue Sources", with: @resource_management7.Revenue_Sources
    fill_in "Year", with: @resource_management7.Year
    click_on "Create Resource management7"

    assert_text "Resource management7 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management7" do
    visit resource_management7s_url
    click_on "Edit", match: :first

    fill_in "Percentage", with: @resource_management7.Percentage
    fill_in "Revenue Sources", with: @resource_management7.Revenue_Sources
    fill_in "Year", with: @resource_management7.Year
    click_on "Update Resource management7"

    assert_text "Resource management7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management7" do
    visit resource_management7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management7 was successfully destroyed"
  end
end
