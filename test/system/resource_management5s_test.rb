require "application_system_test_case"

class ResourceManagement5sTest < ApplicationSystemTestCase
  setup do
    @resource_management5 = resource_management5s(:one)
  end

  test "visiting the index" do
    visit resource_management5s_url
    assert_selector "h1", text: "Resource Management5s"
  end

  test "creating a Resource management5" do
    visit resource_management5s_url
    click_on "New Resource Management5"

    fill_in "Percentage", with: @resource_management5.Percentage
    fill_in "Source", with: @resource_management5.Source
    fill_in "Year", with: @resource_management5.Year
    click_on "Create Resource management5"

    assert_text "Resource management5 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management5" do
    visit resource_management5s_url
    click_on "Edit", match: :first

    fill_in "Percentage", with: @resource_management5.Percentage
    fill_in "Source", with: @resource_management5.Source
    fill_in "Year", with: @resource_management5.Year
    click_on "Update Resource management5"

    assert_text "Resource management5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management5" do
    visit resource_management5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management5 was successfully destroyed"
  end
end
