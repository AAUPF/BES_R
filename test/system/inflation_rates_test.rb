require "application_system_test_case"

class InflationRatesTest < ApplicationSystemTestCase
  setup do
    @inflation_rate = inflation_rates(:one)
  end

  test "visiting the index" do
    visit inflation_rates_url
    assert_selector "h1", text: "Inflation Rates"
  end

  test "creating a Inflation rate" do
    visit inflation_rates_url
    click_on "New Inflation Rate"

    fill_in "Combined Inflation Rate In Percentage", with: @inflation_rate.Combined_Inflation_Rate_in_percentage
    fill_in "Combined Oct 16 Index Final", with: @inflation_rate.Combined_Oct_16_Index_Final
    fill_in "Combined Oct 17 Index Provisional", with: @inflation_rate.Combined_Oct_17_Index_Provisional
    fill_in "Rural Inflation Rate In Percentage", with: @inflation_rate.Rural_Inflation_Rate_in_percentage
    fill_in "Rural Oct 16 Index Final", with: @inflation_rate.Rural_Oct_16_Index_Final
    fill_in "Rural Oct 17 Index Provisional", with: @inflation_rate.Rural_Oct_17_Index_Provisional
    fill_in "State", with: @inflation_rate.State
    fill_in "Urban Inflation Rate In Percentage", with: @inflation_rate.Urban_Inflation_Rate_in_percentage
    fill_in "Urban Oct 16 Index Final", with: @inflation_rate.Urban_Oct_16_Index_Final
    fill_in "Urban Oct 17 Index Provisional", with: @inflation_rate.Urban_Oct_17_Index_Provisional
    click_on "Create Inflation rate"

    assert_text "Inflation rate was successfully created"
    click_on "Back"
  end

  test "updating a Inflation rate" do
    visit inflation_rates_url
    click_on "Edit", match: :first

    fill_in "Combined Inflation Rate In Percentage", with: @inflation_rate.Combined_Inflation_Rate_in_percentage
    fill_in "Combined Oct 16 Index Final", with: @inflation_rate.Combined_Oct_16_Index_Final
    fill_in "Combined Oct 17 Index Provisional", with: @inflation_rate.Combined_Oct_17_Index_Provisional
    fill_in "Rural Inflation Rate In Percentage", with: @inflation_rate.Rural_Inflation_Rate_in_percentage
    fill_in "Rural Oct 16 Index Final", with: @inflation_rate.Rural_Oct_16_Index_Final
    fill_in "Rural Oct 17 Index Provisional", with: @inflation_rate.Rural_Oct_17_Index_Provisional
    fill_in "State", with: @inflation_rate.State
    fill_in "Urban Inflation Rate In Percentage", with: @inflation_rate.Urban_Inflation_Rate_in_percentage
    fill_in "Urban Oct 16 Index Final", with: @inflation_rate.Urban_Oct_16_Index_Final
    fill_in "Urban Oct 17 Index Provisional", with: @inflation_rate.Urban_Oct_17_Index_Provisional
    click_on "Update Inflation rate"

    assert_text "Inflation rate was successfully updated"
    click_on "Back"
  end

  test "destroying a Inflation rate" do
    visit inflation_rates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inflation rate was successfully destroyed"
  end
end
