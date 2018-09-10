require "application_system_test_case"

class SixthEconomicCensus2sTest < ApplicationSystemTestCase
  setup do
    @sixth_economic_census2 = sixth_economic_census2s(:one)
  end

  test "visiting the index" do
    visit sixth_economic_census2s_url
    assert_selector "h1", text: "Sixth Economic Census2s"
  end

  test "creating a Sixth economic census2" do
    visit sixth_economic_census2s_url
    click_on "New Sixth Economic Census2"

    fill_in "District", with: @sixth_economic_census2.District
    fill_in "Number Of Establishments Rural", with: @sixth_economic_census2.Number_of_Establishments_Rural
    fill_in "Number Of Establishments Urban", with: @sixth_economic_census2.Number_of_Establishments_Urban
    fill_in "Percentage Share Establishments", with: @sixth_economic_census2.Percentage_Share_Establishments
    fill_in "Percentage Share Population", with: @sixth_economic_census2.Percentage_Share_Population
    fill_in "Total Number Of Establishments", with: @sixth_economic_census2.Total_Number_of_Establishments
    click_on "Create Sixth economic census2"

    assert_text "Sixth economic census2 was successfully created"
    click_on "Back"
  end

  test "updating a Sixth economic census2" do
    visit sixth_economic_census2s_url
    click_on "Edit", match: :first

    fill_in "District", with: @sixth_economic_census2.District
    fill_in "Number Of Establishments Rural", with: @sixth_economic_census2.Number_of_Establishments_Rural
    fill_in "Number Of Establishments Urban", with: @sixth_economic_census2.Number_of_Establishments_Urban
    fill_in "Percentage Share Establishments", with: @sixth_economic_census2.Percentage_Share_Establishments
    fill_in "Percentage Share Population", with: @sixth_economic_census2.Percentage_Share_Population
    fill_in "Total Number Of Establishments", with: @sixth_economic_census2.Total_Number_of_Establishments
    click_on "Update Sixth economic census2"

    assert_text "Sixth economic census2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sixth economic census2" do
    visit sixth_economic_census2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sixth economic census2 was successfully destroyed"
  end
end
