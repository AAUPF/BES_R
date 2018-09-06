require "application_system_test_case"

class ResourceManagement4sTest < ApplicationSystemTestCase
  setup do
    @resource_management4 = resource_management4s(:one)
  end

  test "visiting the index" do
    visit resource_management4s_url
    assert_selector "h1", text: "Resource Management4s"
  end

  test "creating a Resource management4" do
    visit resource_management4s_url
    click_on "New Resource Management4"

    fill_in "Percentage Growth Over Previous Year", with: @resource_management4.Percentage_Growth_Over_Previous_Year
    fill_in "Sources Of Revenue", with: @resource_management4.Sources_of_Revenue
    fill_in "Year", with: @resource_management4.Year
    click_on "Create Resource management4"

    assert_text "Resource management4 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management4" do
    visit resource_management4s_url
    click_on "Edit", match: :first

    fill_in "Percentage Growth Over Previous Year", with: @resource_management4.Percentage_Growth_Over_Previous_Year
    fill_in "Sources Of Revenue", with: @resource_management4.Sources_of_Revenue
    fill_in "Year", with: @resource_management4.Year
    click_on "Update Resource management4"

    assert_text "Resource management4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management4" do
    visit resource_management4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management4 was successfully destroyed"
  end
end
