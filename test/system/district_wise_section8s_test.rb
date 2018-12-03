require "application_system_test_case"

class DistrictWiseSection8sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section8 = district_wise_section8s(:one)
  end

  test "visiting the index" do
    visit district_wise_section8s_url
    assert_selector "h1", text: "District Wise Section8s"
  end

  test "creating a District wise section8" do
    visit district_wise_section8s_url
    click_on "New District Wise Section8"

    fill_in "Affiliated College", with: @district_wise_section8.Affiliated_College
    fill_in "Constituent College", with: @district_wise_section8.Constituent_College
    fill_in "Districts", with: @district_wise_section8.Districts
    fill_in "Year", with: @district_wise_section8.Year
    click_on "Create District wise section8"

    assert_text "District wise section8 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section8" do
    visit district_wise_section8s_url
    click_on "Edit", match: :first

    fill_in "Affiliated College", with: @district_wise_section8.Affiliated_College
    fill_in "Constituent College", with: @district_wise_section8.Constituent_College
    fill_in "Districts", with: @district_wise_section8.Districts
    fill_in "Year", with: @district_wise_section8.Year
    click_on "Update District wise section8"

    assert_text "District wise section8 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section8" do
    visit district_wise_section8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section8 was successfully destroyed"
  end
end
