require "application_system_test_case"

class ResourceManagement10sTest < ApplicationSystemTestCase
  setup do
    @resource_management10 = resource_management10s(:one)
  end

  test "visiting the index" do
    visit resource_management10s_url
    assert_selector "h1", text: "Resource Management10s"
  end

  test "creating a Resource management10" do
    visit resource_management10s_url
    click_on "New Resource Management10"

    fill_in "Collection", with: @resource_management10.Collection
    fill_in "Cost As Percentage Of Collection", with: @resource_management10.Cost_as_Percentage_of_Collection
    fill_in "Expenditure On Collection", with: @resource_management10.Expenditure_on_collection
    fill_in "Indicator", with: @resource_management10.Indicator
    fill_in "Year", with: @resource_management10.Year
    click_on "Create Resource management10"

    assert_text "Resource management10 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management10" do
    visit resource_management10s_url
    click_on "Edit", match: :first

    fill_in "Collection", with: @resource_management10.Collection
    fill_in "Cost As Percentage Of Collection", with: @resource_management10.Cost_as_Percentage_of_Collection
    fill_in "Expenditure On Collection", with: @resource_management10.Expenditure_on_collection
    fill_in "Indicator", with: @resource_management10.Indicator
    fill_in "Year", with: @resource_management10.Year
    click_on "Update Resource management10"

    assert_text "Resource management10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management10" do
    visit resource_management10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management10 was successfully destroyed"
  end
end
