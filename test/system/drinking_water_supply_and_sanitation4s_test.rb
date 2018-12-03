require "application_system_test_case"

class DrinkingWaterSupplyAndSanitation4sTest < ApplicationSystemTestCase
  setup do
    @drinking_water_supply_and_sanitation4 = drinking_water_supply_and_sanitation4s(:one)
  end

  test "visiting the index" do
    visit drinking_water_supply_and_sanitation4s_url
    assert_selector "h1", text: "Drinking Water Supply And Sanitation4s"
  end

  test "creating a Drinking water supply and sanitation4" do
    visit drinking_water_supply_and_sanitation4s_url
    click_on "New Drinking Water Supply And Sanitation4"

    fill_in "Achievement", with: @drinking_water_supply_and_sanitation4.Achievement
    fill_in "Achievement Percentage", with: @drinking_water_supply_and_sanitation4.Achievement_Percentage
    fill_in "Sector", with: @drinking_water_supply_and_sanitation4.Sector
    fill_in "Target", with: @drinking_water_supply_and_sanitation4.Target
    fill_in "Year", with: @drinking_water_supply_and_sanitation4.Year
    click_on "Create Drinking water supply and sanitation4"

    assert_text "Drinking water supply and sanitation4 was successfully created"
    click_on "Back"
  end

  test "updating a Drinking water supply and sanitation4" do
    visit drinking_water_supply_and_sanitation4s_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @drinking_water_supply_and_sanitation4.Achievement
    fill_in "Achievement Percentage", with: @drinking_water_supply_and_sanitation4.Achievement_Percentage
    fill_in "Sector", with: @drinking_water_supply_and_sanitation4.Sector
    fill_in "Target", with: @drinking_water_supply_and_sanitation4.Target
    fill_in "Year", with: @drinking_water_supply_and_sanitation4.Year
    click_on "Update Drinking water supply and sanitation4"

    assert_text "Drinking water supply and sanitation4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinking water supply and sanitation4" do
    visit drinking_water_supply_and_sanitation4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinking water supply and sanitation4 was successfully destroyed"
  end
end
