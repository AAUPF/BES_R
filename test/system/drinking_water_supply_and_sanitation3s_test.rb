require "application_system_test_case"

class DrinkingWaterSupplyAndSanitation3sTest < ApplicationSystemTestCase
  setup do
    @drinking_water_supply_and_sanitation3 = drinking_water_supply_and_sanitation3s(:one)
  end

  test "visiting the index" do
    visit drinking_water_supply_and_sanitation3s_url
    assert_selector "h1", text: "Drinking Water Supply And Sanitation3s"
  end

  test "creating a Drinking water supply and sanitation3" do
    visit drinking_water_supply_and_sanitation3s_url
    click_on "New Drinking Water Supply And Sanitation3"

    fill_in "Expenditure", with: @drinking_water_supply_and_sanitation3.Expenditure
    fill_in "Outlay", with: @drinking_water_supply_and_sanitation3.Outlay
    fill_in "Outlay As Percent Of Expenditure", with: @drinking_water_supply_and_sanitation3.Outlay_as_Percent_of_Expenditure
    fill_in "Year", with: @drinking_water_supply_and_sanitation3.Year
    click_on "Create Drinking water supply and sanitation3"

    assert_text "Drinking water supply and sanitation3 was successfully created"
    click_on "Back"
  end

  test "updating a Drinking water supply and sanitation3" do
    visit drinking_water_supply_and_sanitation3s_url
    click_on "Edit", match: :first

    fill_in "Expenditure", with: @drinking_water_supply_and_sanitation3.Expenditure
    fill_in "Outlay", with: @drinking_water_supply_and_sanitation3.Outlay
    fill_in "Outlay As Percent Of Expenditure", with: @drinking_water_supply_and_sanitation3.Outlay_as_Percent_of_Expenditure
    fill_in "Year", with: @drinking_water_supply_and_sanitation3.Year
    click_on "Update Drinking water supply and sanitation3"

    assert_text "Drinking water supply and sanitation3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Drinking water supply and sanitation3" do
    visit drinking_water_supply_and_sanitation3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Drinking water supply and sanitation3 was successfully destroyed"
  end
end
