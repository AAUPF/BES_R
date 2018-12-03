require "application_system_test_case"

class DistrictWiseSection7sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section7 = district_wise_section7s(:one)
  end

  test "visiting the index" do
    visit district_wise_section7s_url
    assert_selector "h1", text: "District Wise Section7s"
  end

  test "creating a District wise section7" do
    visit district_wise_section7s_url
    click_on "New District Wise Section7"

    fill_in "Coverage In Percentage", with: @district_wise_section7.Coverage_in_percentage
    fill_in "Districts", with: @district_wise_section7.Districts
    fill_in "Number Of Children Availing Mdm Per Day", with: @district_wise_section7.Number_of_Children_Availing_MDM_per_day
    fill_in "Total Enrolment", with: @district_wise_section7.Total_Enrolment
    fill_in "Year", with: @district_wise_section7.Year
    click_on "Create District wise section7"

    assert_text "District wise section7 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section7" do
    visit district_wise_section7s_url
    click_on "Edit", match: :first

    fill_in "Coverage In Percentage", with: @district_wise_section7.Coverage_in_percentage
    fill_in "Districts", with: @district_wise_section7.Districts
    fill_in "Number Of Children Availing Mdm Per Day", with: @district_wise_section7.Number_of_Children_Availing_MDM_per_day
    fill_in "Total Enrolment", with: @district_wise_section7.Total_Enrolment
    fill_in "Year", with: @district_wise_section7.Year
    click_on "Update District wise section7"

    assert_text "District wise section7 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section7" do
    visit district_wise_section7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section7 was successfully destroyed"
  end
end
