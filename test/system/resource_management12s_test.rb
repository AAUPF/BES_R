require "application_system_test_case"

class ResourceManagement12sTest < ApplicationSystemTestCase
  setup do
    @resource_management12 = resource_management12s(:one)
  end

  test "visiting the index" do
    visit resource_management12s_url
    assert_selector "h1", text: "Resource Management12s"
  end

  test "creating a Resource management12" do
    visit resource_management12s_url
    click_on "New Resource Management12"

    fill_in "Buoyancy Ratio", with: @resource_management12.Buoyancy_Ratio
    fill_in "Revenue Sources", with: @resource_management12.Revenue_Sources
    fill_in "Year", with: @resource_management12.Year
    click_on "Create Resource management12"

    assert_text "Resource management12 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management12" do
    visit resource_management12s_url
    click_on "Edit", match: :first

    fill_in "Buoyancy Ratio", with: @resource_management12.Buoyancy_Ratio
    fill_in "Revenue Sources", with: @resource_management12.Revenue_Sources
    fill_in "Year", with: @resource_management12.Year
    click_on "Update Resource management12"

    assert_text "Resource management12 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management12" do
    visit resource_management12s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management12 was successfully destroyed"
  end
end
