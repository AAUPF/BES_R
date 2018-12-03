require "application_system_test_case"

class DistrictWiseSection6sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section6 = district_wise_section6s(:one)
  end

  test "visiting the index" do
    visit district_wise_section6s_url
    assert_selector "h1", text: "District Wise Section6s"
  end

  test "creating a District wise section6" do
    visit district_wise_section6s_url
    click_on "New District Wise Section6"

    fill_in "Coverage In Percentage", with: @district_wise_section6.Coverage_in_percentage
    fill_in "Districts", with: @district_wise_section6.Districts
    fill_in "Number Of Children Availing Mdm Per Day", with: @district_wise_section6.Number_of_Children_Availing_MDM_per_day
    fill_in "Total", with: @district_wise_section6.Total
    fill_in "Year", with: @district_wise_section6.Year
    fill_in "Enrolment", with: @district_wise_section6._Enrolment
    click_on "Create District wise section6"

    assert_text "District wise section6 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section6" do
    visit district_wise_section6s_url
    click_on "Edit", match: :first

    fill_in "Coverage In Percentage", with: @district_wise_section6.Coverage_in_percentage
    fill_in "Districts", with: @district_wise_section6.Districts
    fill_in "Number Of Children Availing Mdm Per Day", with: @district_wise_section6.Number_of_Children_Availing_MDM_per_day
    fill_in "Total", with: @district_wise_section6.Total
    fill_in "Year", with: @district_wise_section6.Year
    fill_in "Enrolment", with: @district_wise_section6._Enrolment
    click_on "Update District wise section6"

    assert_text "District wise section6 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section6" do
    visit district_wise_section6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section6 was successfully destroyed"
  end
end
