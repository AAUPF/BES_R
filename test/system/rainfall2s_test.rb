require "application_system_test_case"

class Rainfall2sTest < ApplicationSystemTestCase
  setup do
    @rainfall2 = rainfall2s(:one)
  end

  test "visiting the index" do
    visit rainfall2s_url
    assert_selector "h1", text: "Rainfall2s"
  end

  test "creating a Rainfall2" do
    visit rainfall2s_url
    click_on "New Rainfall2"

    fill_in "Districts", with: @rainfall2.Districts
    fill_in "Hot Weather Rain", with: @rainfall2.Hot_Weather_Rain
    fill_in "North West Monsoon", with: @rainfall2.North_West_Monsoon
    fill_in "South West Monsoon", with: @rainfall2.South_West_Monsoon
    fill_in "Total", with: @rainfall2.Total
    fill_in "Winter Rain", with: @rainfall2.Winter_Rain
    fill_in "Year", with: @rainfall2.Year
    click_on "Create Rainfall2"

    assert_text "Rainfall2 was successfully created"
    click_on "Back"
  end

  test "updating a Rainfall2" do
    visit rainfall2s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @rainfall2.Districts
    fill_in "Hot Weather Rain", with: @rainfall2.Hot_Weather_Rain
    fill_in "North West Monsoon", with: @rainfall2.North_West_Monsoon
    fill_in "South West Monsoon", with: @rainfall2.South_West_Monsoon
    fill_in "Total", with: @rainfall2.Total
    fill_in "Winter Rain", with: @rainfall2.Winter_Rain
    fill_in "Year", with: @rainfall2.Year
    click_on "Update Rainfall2"

    assert_text "Rainfall2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rainfall2" do
    visit rainfall2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rainfall2 was successfully destroyed"
  end
end
