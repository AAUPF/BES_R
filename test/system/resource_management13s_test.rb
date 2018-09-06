require "application_system_test_case"

class ResourceManagement13sTest < ApplicationSystemTestCase
  setup do
    @resource_management13 = resource_management13s(:one)
  end

  test "visiting the index" do
    visit resource_management13s_url
    assert_selector "h1", text: "Resource Management13s"
  end

  test "creating a Resource management13" do
    visit resource_management13s_url
    click_on "New Resource Management13"

    fill_in "Amount", with: @resource_management13.Amount
    fill_in "Sources", with: @resource_management13.Sources
    fill_in "Year", with: @resource_management13.Year
    click_on "Create Resource management13"

    assert_text "Resource management13 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management13" do
    visit resource_management13s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @resource_management13.Amount
    fill_in "Sources", with: @resource_management13.Sources
    fill_in "Year", with: @resource_management13.Year
    click_on "Update Resource management13"

    assert_text "Resource management13 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management13" do
    visit resource_management13s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management13 was successfully destroyed"
  end
end
