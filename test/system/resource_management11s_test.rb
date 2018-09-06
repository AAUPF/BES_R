require "application_system_test_case"

class ResourceManagement11sTest < ApplicationSystemTestCase
  setup do
    @resource_management11 = resource_management11s(:one)
  end

  test "visiting the index" do
    visit resource_management11s_url
    assert_selector "h1", text: "Resource Management11s"
  end

  test "creating a Resource management11" do
    visit resource_management11s_url
    click_on "New Resource Management11"

    fill_in "Indicators", with: @resource_management11.Indicators
    fill_in "Percentage", with: @resource_management11.Percentage
    fill_in "Year", with: @resource_management11.Year
    click_on "Create Resource management11"

    assert_text "Resource management11 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management11" do
    visit resource_management11s_url
    click_on "Edit", match: :first

    fill_in "Indicators", with: @resource_management11.Indicators
    fill_in "Percentage", with: @resource_management11.Percentage
    fill_in "Year", with: @resource_management11.Year
    click_on "Update Resource management11"

    assert_text "Resource management11 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management11" do
    visit resource_management11s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management11 was successfully destroyed"
  end
end
