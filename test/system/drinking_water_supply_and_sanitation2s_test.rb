require "application_system_test_case"

class DrinkingWaterSupplyAndSanitation2sTest < ApplicationSystemTestCase
  setup do
    @drinking_water_supply_and_sanitation2 = drinking_water_supply_and_sanitation2s(:one)
  end

  test "visiting the index" do
    visit drinking_water_supply_and_sanitation2s_url
    assert_selector "h1", text: "Drinking Water Supply And Sanitation2s"
  end

  test "creating a Drinking water supply and sanitation2" do
    visit drinking_water_supply_and_sanitation2s_url
    click_on "New Drinking Water Supply And Sanitation2"

    fill_in "Expenditure", with: @drinking_water_supply_and_sanitation2.Expenditure
    fill_in "Outlay", with: @drinking_water_supply_and_sanitation2.Outlay
    fill_in "Percentage Of Utilisation", with: @drinking_water_supply_and_sanitation2.Percentage_of_Utilisation
    fill_in "Year", with: @drinking_water_supply_and_sanitation2.Year
    click_on "Create Drinking water supply and sanitation2"

    assert_text "Drinking water supply and sanitation2 was successfully created"
    click_on "Back"
  end

  test "updating a Drinking water supply and sanitation2" do
    visit drinking_water_supply_and_sanitation2s_url
    click_on "Edit", match: :first

    fill_in "Expenditure", with: @drinking_water_supply_and_sanitation2.Expenditure
    fill_in "Outlay", with: @drinking_water_supply_and_sanitation2.Outlay
    fill_in "Percentage Of Utilisation", with: @drinking_water_supply_and_sanitation2.Percentage_of_Utilisation
    fill_in "Year", with: @drinking_water_supply_and_sanitation2.Year
    click_on "Update Drinking water supply and sanitation2"

    assert_text "Drinking water supply and sanitation2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinking water supply and sanitation2" do
    visit drinking_water_supply_and_sanitation2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinking water supply and sanitation2 was successfully destroyed"
  end
end
