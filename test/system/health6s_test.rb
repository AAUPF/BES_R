require "application_system_test_case"

class Health6sTest < ApplicationSystemTestCase
  setup do
    @health6 = health6s(:one)
  end

  test "visiting the index" do
    visit health6s_url
    assert_selector "h1", text: "Health6s"
  end

  test "creating a Health6" do
    visit health6s_url
    click_on "New Health6"

    fill_in "Average Number Of Outpatient Visits Per Day", with: @health6.Average_number_of_Outpatient_visits_per_day
    fill_in "Districts", with: @health6.Districts
    fill_in "Inpatient Bed Occupancy Rate", with: @health6.Inpatient_Bed_Occupancy_Rate
    fill_in "Year", with: @health6.Year
    click_on "Create Health6"

    assert_text "Health6 was successfully created"
    click_on "Back"
  end

  test "updating a Health6" do
    visit health6s_url
    click_on "Edit", match: :first

    fill_in "Average Number Of Outpatient Visits Per Day", with: @health6.Average_number_of_Outpatient_visits_per_day
    fill_in "Districts", with: @health6.Districts
    fill_in "Inpatient Bed Occupancy Rate", with: @health6.Inpatient_Bed_Occupancy_Rate
    fill_in "Year", with: @health6.Year
    click_on "Update Health6"

    assert_text "Health6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Health6" do
    visit health6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health6 was successfully destroyed"
  end
end
