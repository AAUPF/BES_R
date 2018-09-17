require "application_system_test_case"

class ResourceManagement9sTest < ApplicationSystemTestCase
  setup do
    @resource_management9 = resource_management9s(:one)
  end

  test "visiting the index" do
    visit resource_management9s_url
    assert_selector "h1", text: "Resource Management9s"
  end

  test "creating a Resource management9" do
    visit resource_management9s_url
    click_on "New Resource Management9"

    fill_in "Actual Receipts", with: @resource_management9.Actual_Receipts
    fill_in "Budget Estimate", with: @resource_management9.Budget_Estimate
    fill_in "Revenue Sources", with: @resource_management9.Revenue_Sources
    fill_in "Variation Excess Or Shortfall In Amount", with: @resource_management9.Variation_Excess_or_Shortfall_in_Amount
    fill_in "Variation Excess Or Shortfall In Percentage", with: @resource_management9.Variation_Excess_or_Shortfall_in_Percentage
    click_on "Create Resource management9"

    assert_text "Resource management9 was successfully created"
    click_on "Back"
  end

  test "updating a Resource management9" do
    visit resource_management9s_url
    click_on "Edit", match: :first

    fill_in "Actual Receipts", with: @resource_management9.Actual_Receipts
    fill_in "Budget Estimate", with: @resource_management9.Budget_Estimate
    fill_in "Revenue Sources", with: @resource_management9.Revenue_Sources
    fill_in "Variation Excess Or Shortfall In Amount", with: @resource_management9.Variation_Excess_or_Shortfall_in_Amount
    fill_in "Variation Excess Or Shortfall In Percentage", with: @resource_management9.Variation_Excess_or_Shortfall_in_Percentage
    click_on "Update Resource management9"

    assert_text "Resource management9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Resource management9" do
    visit resource_management9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resource management9 was successfully destroyed"
  end
end
