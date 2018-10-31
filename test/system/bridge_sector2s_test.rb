require "application_system_test_case"

class BridgeSector2sTest < ApplicationSystemTestCase
  setup do
    @bridge_sector2 = bridge_sector2s(:one)
  end

  test "visiting the index" do
    visit bridge_sector2s_url
    assert_selector "h1", text: "Bridge Sector2s"
  end

  test "creating a Bridge sector2" do
    visit bridge_sector2s_url
    click_on "New Bridge Sector2"

    fill_in "Administrative Expenditure", with: @bridge_sector2.Administrative_Expenditure
    fill_in "Expenditure", with: @bridge_sector2.Expenditure
    fill_in "Gross Profit", with: @bridge_sector2.Gross_Profit
    fill_in "Net Profit", with: @bridge_sector2.Net_Profit
    fill_in "Number Of Bridges", with: @bridge_sector2.Number_of_Bridges
    fill_in "Total Revenue", with: @bridge_sector2.Total_Revenue
    fill_in "Turnover", with: @bridge_sector2.Turnover
    fill_in "Year", with: @bridge_sector2.Year
    click_on "Create Bridge sector2"

    assert_text "Bridge sector2 was successfully created"
    click_on "Back"
  end

  test "updating a Bridge sector2" do
    visit bridge_sector2s_url
    click_on "Edit", match: :first

    fill_in "Administrative Expenditure", with: @bridge_sector2.Administrative_Expenditure
    fill_in "Expenditure", with: @bridge_sector2.Expenditure
    fill_in "Gross Profit", with: @bridge_sector2.Gross_Profit
    fill_in "Net Profit", with: @bridge_sector2.Net_Profit
    fill_in "Number Of Bridges", with: @bridge_sector2.Number_of_Bridges
    fill_in "Total Revenue", with: @bridge_sector2.Total_Revenue
    fill_in "Turnover", with: @bridge_sector2.Turnover
    fill_in "Year", with: @bridge_sector2.Year
    click_on "Update Bridge sector2"

    assert_text "Bridge sector2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bridge sector2" do
    visit bridge_sector2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bridge sector2 was successfully destroyed"
  end
end
