require "application_system_test_case"

class DistrictWiseSection1sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section1 = district_wise_section1s(:one)
  end

  test "visiting the index" do
    visit district_wise_section1s_url
    assert_selector "h1", text: "District Wise Section1s"
  end

  test "creating a District wise section1" do
    visit district_wise_section1s_url
    click_on "New District Wise Section1"

    fill_in "2013 14", with: @district_wise_section1.2013-14
    fill_in "2014 15", with: @district_wise_section1.2014-15
    fill_in "2015 16", with: @district_wise_section1.2015-16
    fill_in "2016 17", with: @district_wise_section1.2016-17
    fill_in "Indicator", with: @district_wise_section1.Indicator
    fill_in "Population Share", with: @district_wise_section1.Population_Share
    fill_in "Sector", with: @district_wise_section1.Sector
    click_on "Create District wise section1"

    assert_text "District wise section1 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section1" do
    visit district_wise_section1s_url
    click_on "Edit", match: :first

    fill_in "2013 14", with: @district_wise_section1.2013-14
    fill_in "2014 15", with: @district_wise_section1.2014-15
    fill_in "2015 16", with: @district_wise_section1.2015-16
    fill_in "2016 17", with: @district_wise_section1.2016-17
    fill_in "Indicator", with: @district_wise_section1.Indicator
    fill_in "Population Share", with: @district_wise_section1.Population_Share
    fill_in "Sector", with: @district_wise_section1.Sector
    click_on "Update District wise section1"

    assert_text "District wise section1 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section1" do
    visit district_wise_section1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section1 was successfully destroyed"
  end
end
