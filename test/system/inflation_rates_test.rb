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

    fill_in "Inflation Rate In Percentage", with: @inflation_rate.Inflation_Rate_in_percentage
    fill_in "Oct 16 Index Final", with: @inflation_rate.Oct_16_Index_Final
    fill_in "Oct 17 Index Provisional", with: @inflation_rate.Oct_17_Index_Provisional
    fill_in "Sector", with: @inflation_rate.Sector
    fill_in "State", with: @inflation_rate.State
    click_on "Create Inflation rate"

    assert_text "Inflation rate was successfully created"
    click_on "Back"
  end

  test "updating a Inflation rate" do
    visit inflation_rates_url
    click_on "Edit", match: :first

    fill_in "Inflation Rate In Percentage", with: @inflation_rate.Inflation_Rate_in_percentage
    fill_in "Oct 16 Index Final", with: @inflation_rate.Oct_16_Index_Final
    fill_in "Oct 17 Index Provisional", with: @inflation_rate.Oct_17_Index_Provisional
    fill_in "Sector", with: @inflation_rate.Sector
    fill_in "State", with: @inflation_rate.State
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
