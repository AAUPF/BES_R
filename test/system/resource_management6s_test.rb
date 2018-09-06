require "application_system_test_case"

class ResourceManagement6sTest < ApplicationSystemTestCase
  setup do
    @resource_management6 = resource_management6s(:one)
  end

  test "visiting the index" do
    visit resource_management6s_url
    assert_selector "h1", text: "Resource Management6s"
  end

  test "creating a Resource management6" do
    visit resource_management6s_url
    click_on "New Resource Management6"

    fill_in "Amount", with: @resource_management6.Amount
    fill_in "Sources Of Revenue", with: @resource_management6.Sources_of_Revenue
    fill_in "Year", with: @resource_management6.Year
    click_on "Create Resource management6"

    assert_text "Resource management6 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management6" do
    visit resource_management6s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @resource_management6.Amount
    fill_in "Sources Of Revenue", with: @resource_management6.Sources_of_Revenue
    fill_in "Year", with: @resource_management6.Year
    click_on "Update Resource management6"

    assert_text "Resource management6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management6" do
    visit resource_management6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management6 was successfully destroyed"
  end
end
