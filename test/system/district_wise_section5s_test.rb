require "application_system_test_case"

class DistrictWiseSection5sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section5 = district_wise_section5s(:one)
  end

  test "visiting the index" do
    visit district_wise_section5s_url
    assert_selector "h1", text: "District Wise Section5s"
  end

  test "creating a District wise section5" do
    visit district_wise_section5s_url
    click_on "New District Wise Section5"

    fill_in "Districts", with: @district_wise_section5.Districts
    fill_in "Primary Schools", with: @district_wise_section5.Primary_Schools
    fill_in "Total", with: @district_wise_section5.Total
    fill_in "Upper Primary Schools", with: @district_wise_section5.Upper_Primary_Schools
    click_on "Create District wise section5"

    assert_text "District wise section5 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section5" do
    visit district_wise_section5s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @district_wise_section5.Districts
    fill_in "Primary Schools", with: @district_wise_section5.Primary_Schools
    fill_in "Total", with: @district_wise_section5.Total
    fill_in "Upper Primary Schools", with: @district_wise_section5.Upper_Primary_Schools
    click_on "Update District wise section5"

    assert_text "District wise section5 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section5" do
    visit district_wise_section5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section5 was successfully destroyed"
  end
end
