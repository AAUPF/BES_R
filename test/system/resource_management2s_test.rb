require "application_system_test_case"

class ResourceManagement2sTest < ApplicationSystemTestCase
  setup do
    @resource_management2 = resource_management2s(:one)
  end

  test "visiting the index" do
    visit resource_management2s_url
    assert_selector "h1", text: "Resource Management2s"
  end

  test "creating a Resource management2" do
    visit resource_management2s_url
    click_on "New Resource Management2"

    fill_in "Amount", with: @resource_management2.Amount
    fill_in "Sources Of Revenue", with: @resource_management2.Sources_of_Revenue
    fill_in "Year", with: @resource_management2.Year
    click_on "Create Resource management2"

    assert_text "Resource management2 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management2" do
    visit resource_management2s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @resource_management2.Amount
    fill_in "Sources Of Revenue", with: @resource_management2.Sources_of_Revenue
    fill_in "Year", with: @resource_management2.Year
    click_on "Update Resource management2"

    assert_text "Resource management2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management2" do
    visit resource_management2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management2 was successfully destroyed"
  end
end
