require "application_system_test_case"

class DeficitManagement2sTest < ApplicationSystemTestCase
  setup do
    @deficit_management2 = deficit_management2s(:one)
  end

  test "visiting the index" do
    visit deficit_management2s_url
    assert_selector "h1", text: "Deficit Management2s"
  end

  test "creating a Deficit management2" do
    visit deficit_management2s_url
    click_on "New Deficit Management2"

    fill_in "Gross Fiscal Deficit", with: @deficit_management2.Gross_Fiscal_Deficit
    fill_in "State", with: @deficit_management2.State
    fill_in "Year", with: @deficit_management2.Year
    click_on "Create Deficit management2"

    assert_text "Deficit management2 was successfully created"
    click_on "Back"
  end

  test "updating a Deficit management2" do
    visit deficit_management2s_url
    click_on "Edit", match: :first

    fill_in "Gross Fiscal Deficit", with: @deficit_management2.Gross_Fiscal_Deficit
    fill_in "State", with: @deficit_management2.State
    fill_in "Year", with: @deficit_management2.Year
    click_on "Update Deficit management2"

    assert_text "Deficit management2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deficit management2" do
    visit deficit_management2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deficit management2 was successfully destroyed"
  end
end
