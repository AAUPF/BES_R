require "application_system_test_case"

class DistrictWiseSection2sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section2 = district_wise_section2s(:one)
  end

  test "visiting the index" do
    visit district_wise_section2s_url
    assert_selector "h1", text: "District Wise Section2s"
  end

  test "creating a District wise section2" do
    visit district_wise_section2s_url
    click_on "New District Wise Section2"

    fill_in "Districts", with: @district_wise_section2.Districts
    fill_in "Primary", with: @district_wise_section2.Primary
    fill_in "Total", with: @district_wise_section2.Total
    fill_in "Upper Primary", with: @district_wise_section2.Upper_Primary
    fill_in "Year", with: @district_wise_section2.Year
    click_on "Create District wise section2"

    assert_text "District wise section2 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section2" do
    visit district_wise_section2s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @district_wise_section2.Districts
    fill_in "Primary", with: @district_wise_section2.Primary
    fill_in "Total", with: @district_wise_section2.Total
    fill_in "Upper Primary", with: @district_wise_section2.Upper_Primary
    fill_in "Year", with: @district_wise_section2.Year
    click_on "Update District wise section2"

    assert_text "District wise section2 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section2" do
    visit district_wise_section2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section2 was successfully destroyed"
  end
end
