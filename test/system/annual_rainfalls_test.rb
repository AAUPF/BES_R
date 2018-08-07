require "application_system_test_case"

class AnnualRainfallsTest < ApplicationSystemTestCase
  setup do
    @annual_rainfall = annual_rainfalls(:one)
  end

  test "visiting the index" do
    visit annual_rainfalls_url
    assert_selector "h1", text: "Annual Rainfalls"
  end

  test "creating a Annual rainfall" do
    visit annual_rainfalls_url
    click_on "New Annual Rainfall"

    fill_in "April", with: @annual_rainfall.April
    fill_in "August", with: @annual_rainfall.August
    fill_in "December", with: @annual_rainfall.December
    fill_in "Districts", with: @annual_rainfall.Districts
    fill_in "February", with: @annual_rainfall.February
    fill_in "January", with: @annual_rainfall.January
    fill_in "July", with: @annual_rainfall.July
    fill_in "June", with: @annual_rainfall.June
    fill_in "March", with: @annual_rainfall.March
    fill_in "May", with: @annual_rainfall.May
    fill_in "November", with: @annual_rainfall.November
    fill_in "October", with: @annual_rainfall.October
    fill_in "September", with: @annual_rainfall.September
    fill_in "Year", with: @annual_rainfall.Year
    click_on "Create Annual rainfall"

    assert_text "Annual rainfall was successfully created"
    click_on "Back"
  end

  test "updating a Annual rainfall" do
    visit annual_rainfalls_url
    click_on "Edit", match: :first

    fill_in "April", with: @annual_rainfall.April
    fill_in "August", with: @annual_rainfall.August
    fill_in "December", with: @annual_rainfall.December
    fill_in "Districts", with: @annual_rainfall.Districts
    fill_in "February", with: @annual_rainfall.February
    fill_in "January", with: @annual_rainfall.January
    fill_in "July", with: @annual_rainfall.July
    fill_in "June", with: @annual_rainfall.June
    fill_in "March", with: @annual_rainfall.March
    fill_in "May", with: @annual_rainfall.May
    fill_in "November", with: @annual_rainfall.November
    fill_in "October", with: @annual_rainfall.October
    fill_in "September", with: @annual_rainfall.September
    fill_in "Year", with: @annual_rainfall.Year
    click_on "Update Annual rainfall"

    assert_text "Annual rainfall was successfully updated"
    click_on "Back"
  end

  test "destroying a Annual rainfall" do
    visit annual_rainfalls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Annual rainfall was successfully destroyed"
  end
end
