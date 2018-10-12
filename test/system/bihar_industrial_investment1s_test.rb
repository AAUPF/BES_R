require "application_system_test_case"

class BiharIndustrialInvestment1sTest < ApplicationSystemTestCase
  setup do
    @bihar_industrial_investment1 = bihar_industrial_investment1s(:one)
  end

  test "visiting the index" do
    visit bihar_industrial_investment1s_url
    assert_selector "h1", text: "Bihar Industrial Investment1s"
  end

  test "creating a Bihar industrial investment1" do
    visit bihar_industrial_investment1s_url
    click_on "New Bihar Industrial Investment1"

    fill_in "Number Of Proposed Units", with: @bihar_industrial_investment1.Number_of_Proposed_Units
    fill_in "Proposed Investment", with: @bihar_industrial_investment1.Proposed_Investment
    fill_in "Sectors", with: @bihar_industrial_investment1.Sectors
    click_on "Create Bihar industrial investment1"

    assert_text "Bihar industrial investment1 was successfully created"
    click_on "Back"
  end

  test "updating a Bihar industrial investment1" do
    visit bihar_industrial_investment1s_url
    click_on "Edit", match: :first

    fill_in "Number Of Proposed Units", with: @bihar_industrial_investment1.Number_of_Proposed_Units
    fill_in "Proposed Investment", with: @bihar_industrial_investment1.Proposed_Investment
    fill_in "Sectors", with: @bihar_industrial_investment1.Sectors
    click_on "Update Bihar industrial investment1"

    assert_text "Bihar industrial investment1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bihar industrial investment1" do
    visit bihar_industrial_investment1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bihar industrial investment1 was successfully destroyed"
  end
end
