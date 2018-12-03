require "application_system_test_case"

class DistrictWiseSectionsTest < ApplicationSystemTestCase
  setup do
    @district_wise_section = district_wise_sections(:one)
  end

  test "visiting the index" do
    visit district_wise_sections_url
    assert_selector "h1", text: "District Wise Sections"
  end

  test "creating a District wise section" do
    visit district_wise_sections_url
    click_on "New District Wise Section"

    fill_in "Districts", with: @district_wise_section.Districts
    fill_in "Number Of Handpumps Installed", with: @district_wise_section.Number_of_Handpumps_Installed
    fill_in "Slipped Back Habitations Or Water Quality Problems Covered", with: @district_wise_section.Slipped_back_Habitations_or_Water_quality_Problems_Covered
    fill_in "Year", with: @district_wise_section.Year
    click_on "Create District wise section"

    assert_text "District wise section was successfully created"
    click_on "Back"
  end

  test "updating a District wise section" do
    visit district_wise_sections_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @district_wise_section.Districts
    fill_in "Number Of Handpumps Installed", with: @district_wise_section.Number_of_Handpumps_Installed
    fill_in "Slipped Back Habitations Or Water Quality Problems Covered", with: @district_wise_section.Slipped_back_Habitations_or_Water_quality_Problems_Covered
    fill_in "Year", with: @district_wise_section.Year
    click_on "Update District wise section"

    assert_text "District wise section was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section" do
    visit district_wise_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section was successfully destroyed"
  end
end
