require "application_system_test_case"

class DistrictWiseSection10sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section10 = district_wise_section10s(:one)
  end

  test "visiting the index" do
    visit district_wise_section10s_url
    assert_selector "h1", text: "District Wise Section10s"
  end

  test "creating a District wise section10" do
    visit district_wise_section10s_url
    click_on "New District Wise Section10"

    fill_in "2012 13", with: @district_wise_section10.2012-13
    fill_in "2013 14", with: @district_wise_section10.2013-14
    fill_in "2014 15", with: @district_wise_section10.2014-15
    fill_in "2015 16", with: @district_wise_section10.2015-16
    fill_in "2016 17", with: @district_wise_section10.2016-17
    fill_in "Districts", with: @district_wise_section10.Districts
    fill_in "Indicator", with: @district_wise_section10.Indicator
    fill_in "Indicator1", with: @district_wise_section10.Indicator1
    click_on "Create District wise section10"

    assert_text "District wise section10 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section10" do
    visit district_wise_section10s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @district_wise_section10.2012-13
    fill_in "2013 14", with: @district_wise_section10.2013-14
    fill_in "2014 15", with: @district_wise_section10.2014-15
    fill_in "2015 16", with: @district_wise_section10.2015-16
    fill_in "2016 17", with: @district_wise_section10.2016-17
    fill_in "Districts", with: @district_wise_section10.Districts
    fill_in "Indicator", with: @district_wise_section10.Indicator
    fill_in "Indicator1", with: @district_wise_section10.Indicator1
    click_on "Update District wise section10"

    assert_text "District wise section10 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section10" do
    visit district_wise_section10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section10 was successfully destroyed"
  end
end
