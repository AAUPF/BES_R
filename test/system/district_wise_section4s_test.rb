require "application_system_test_case"

class DistrictWiseSection4sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section4 = district_wise_section4s(:one)
  end

  test "visiting the index" do
    visit district_wise_section4s_url
    assert_selector "h1", text: "District Wise Section4s"
  end

  test "creating a District wise section4" do
    visit district_wise_section4s_url
    click_on "New District Wise Section4"

    fill_in "Districts", with: @district_wise_section4.Districts
    fill_in "Primary1", with: @district_wise_section4.Primary1
    fill_in "Total", with: @district_wise_section4.Total
    fill_in "Upper Primary", with: @district_wise_section4.Upper_Primary
    fill_in "Year", with: @district_wise_section4.Year
    click_on "Create District wise section4"

    assert_text "District wise section4 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section4" do
    visit district_wise_section4s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @district_wise_section4.Districts
    fill_in "Primary1", with: @district_wise_section4.Primary1
    fill_in "Total", with: @district_wise_section4.Total
    fill_in "Upper Primary", with: @district_wise_section4.Upper_Primary
    fill_in "Year", with: @district_wise_section4.Year
    click_on "Update District wise section4"

    assert_text "District wise section4 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section4" do
    visit district_wise_section4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section4 was successfully destroyed"
  end
end
