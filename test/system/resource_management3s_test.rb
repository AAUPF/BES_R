require "application_system_test_case"

class ResourceManagement3sTest < ApplicationSystemTestCase
  setup do
    @resource_management3 = resource_management3s(:one)
  end

  test "visiting the index" do
    visit resource_management3s_url
    assert_selector "h1", text: "Resource Management3s"
  end

  test "creating a Resource management3" do
    visit resource_management3s_url
    click_on "New Resource Management3"

    fill_in "Percentage", with: @resource_management3.Percentage
    fill_in "Sources Of Revenue", with: @resource_management3.Sources_of_Revenue
    fill_in "Year", with: @resource_management3.Year
    click_on "Create Resource management3"

    assert_text "Resource management3 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management3" do
    visit resource_management3s_url
    click_on "Edit", match: :first

    fill_in "Percentage", with: @resource_management3.Percentage
    fill_in "Sources Of Revenue", with: @resource_management3.Sources_of_Revenue
    fill_in "Year", with: @resource_management3.Year
    click_on "Update Resource management3"

    assert_text "Resource management3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management3" do
    visit resource_management3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management3 was successfully destroyed"
  end
end
