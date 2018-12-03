require "application_system_test_case"

class DrinkingWaterSupplyAndSanitation1sTest < ApplicationSystemTestCase
  setup do
    @drinking_water_supply_and_sanitation1 = drinking_water_supply_and_sanitation1s(:one)
  end

  test "visiting the index" do
    visit drinking_water_supply_and_sanitation1s_url
    assert_selector "h1", text: "Drinking Water Supply And Sanitation1s"
  end

  test "creating a Drinking water supply and sanitation1" do
    visit drinking_water_supply_and_sanitation1s_url
    click_on "New Drinking Water Supply And Sanitation1"

    fill_in "Handpumps Installed", with: @drinking_water_supply_and_sanitation1.Handpumps_Installed
    fill_in "Ihhl Constructed Under Apl", with: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_APL
    fill_in "Ihhl Constructed Under Bpl", with: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_BPL
    fill_in "Slipped Back Habitations Or Water Quality Problems Covered", with: @drinking_water_supply_and_sanitation1.Slipped_back_Habitations_or_Water_quality_problems_covered
    fill_in "Total Ihhl Constructed", with: @drinking_water_supply_and_sanitation1.Total_IHHL_constructed
    fill_in "Year", with: @drinking_water_supply_and_sanitation1.Year
    click_on "Create Drinking water supply and sanitation1"

    assert_text "Drinking water supply and sanitation1 was successfully created"
    click_on "Back"
  end

  test "updating a Drinking water supply and sanitation1" do
    visit drinking_water_supply_and_sanitation1s_url
    click_on "Edit", match: :first

    fill_in "Handpumps Installed", with: @drinking_water_supply_and_sanitation1.Handpumps_Installed
    fill_in "Ihhl Constructed Under Apl", with: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_APL
    fill_in "Ihhl Constructed Under Bpl", with: @drinking_water_supply_and_sanitation1.IHHL_constructed_under_BPL
    fill_in "Slipped Back Habitations Or Water Quality Problems Covered", with: @drinking_water_supply_and_sanitation1.Slipped_back_Habitations_or_Water_quality_problems_covered
    fill_in "Total Ihhl Constructed", with: @drinking_water_supply_and_sanitation1.Total_IHHL_constructed
    fill_in "Year", with: @drinking_water_supply_and_sanitation1.Year
    click_on "Update Drinking water supply and sanitation1"

    assert_text "Drinking water supply and sanitation1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinking water supply and sanitation1" do
    visit drinking_water_supply_and_sanitation1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinking water supply and sanitation1 was successfully destroyed"
  end
end
