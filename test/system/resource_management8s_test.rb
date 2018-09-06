require "application_system_test_case"

class ResourceManagement8sTest < ApplicationSystemTestCase
  setup do
    @resource_management8 = resource_management8s(:one)
  end

  test "visiting the index" do
    visit resource_management8s_url
    assert_selector "h1", text: "Resource Management8s"
  end

  test "creating a Resource management8" do
    visit resource_management8s_url
    click_on "New Resource Management8"

    fill_in "Revenue Sources", with: @resource_management8.Revenue_Sources
    fill_in "Year", with: @resource_management8.Year
    fill_in "Yearly Growth Rates", with: @resource_management8.Yearly_Growth_Rates
    click_on "Create Resource management8"

    assert_text "Resource management8 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management8" do
    visit resource_management8s_url
    click_on "Edit", match: :first

    fill_in "Revenue Sources", with: @resource_management8.Revenue_Sources
    fill_in "Year", with: @resource_management8.Year
    fill_in "Yearly Growth Rates", with: @resource_management8.Yearly_Growth_Rates
    click_on "Update Resource management8"

    assert_text "Resource management8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management8" do
    visit resource_management8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management8 was successfully destroyed"
  end
end
