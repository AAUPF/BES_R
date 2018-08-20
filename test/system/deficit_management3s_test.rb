require "application_system_test_case"

class DeficitManagement3sTest < ApplicationSystemTestCase
  setup do
    @deficit_management3 = deficit_management3s(:one)
  end

  test "visiting the index" do
    visit deficit_management3s_url
    assert_selector "h1", text: "Deficit Management3s"
  end

  test "creating a Deficit management3" do
    visit deficit_management3s_url
    click_on "New Deficit Management3"

    fill_in "Amount", with: @deficit_management3.Amount
    fill_in "Gross Fiscal Deficit", with: @deficit_management3.Gross_Fiscal_Deficit
    fill_in "Year", with: @deficit_management3.Year
    click_on "Create Deficit management3"

    assert_text "Deficit management3 was successfully created"
    click_on "Back"
  end

  test "updating a Deficit management3" do
    visit deficit_management3s_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @deficit_management3.Amount
    fill_in "Gross Fiscal Deficit", with: @deficit_management3.Gross_Fiscal_Deficit
    fill_in "Year", with: @deficit_management3.Year
    click_on "Update Deficit management3"

    assert_text "Deficit management3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deficit management3" do
    visit deficit_management3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deficit management3 was successfully destroyed"
  end
end
