require "application_system_test_case"

class DistrictWiseSection9sTest < ApplicationSystemTestCase
  setup do
    @district_wise_section9 = district_wise_section9s(:one)
  end

  test "visiting the index" do
    visit district_wise_section9s_url
    assert_selector "h1", text: "District Wise Section9s"
  end

  test "creating a District wise section9" do
    visit district_wise_section9s_url
    click_on "New District Wise Section9"

    fill_in "All Colleges", with: @district_wise_section9.All_Colleges
    fill_in "B Ed", with: @district_wise_section9.B_Ed
    fill_in "Constituent College", with: @district_wise_section9.Constituent_College
    fill_in "Districts", with: @district_wise_section9.Districts
    fill_in "Engineering", with: @district_wise_section9.Engineering
    fill_in "Medical", with: @district_wise_section9.Medical
    fill_in "Others", with: @district_wise_section9.Others
    fill_in "Science Arts Commerce College", with: @district_wise_section9.Science_Arts_Commerce_College
    fill_in "Total", with: @district_wise_section9.Total
    click_on "Create District wise section9"

    assert_text "District wise section9 was successfully created"
    click_on "Back"
  end

  test "updating a District wise section9" do
    visit district_wise_section9s_url
    click_on "Edit", match: :first

    fill_in "All Colleges", with: @district_wise_section9.All_Colleges
    fill_in "B Ed", with: @district_wise_section9.B_Ed
    fill_in "Constituent College", with: @district_wise_section9.Constituent_College
    fill_in "Districts", with: @district_wise_section9.Districts
    fill_in "Engineering", with: @district_wise_section9.Engineering
    fill_in "Medical", with: @district_wise_section9.Medical
    fill_in "Others", with: @district_wise_section9.Others
    fill_in "Science Arts Commerce College", with: @district_wise_section9.Science_Arts_Commerce_College
    fill_in "Total", with: @district_wise_section9.Total
    click_on "Update District wise section9"

    assert_text "District wise section9 was successfully updated"
    click_on "Back"
  end

  test "destroying a District wise section9" do
    visit district_wise_section9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "District wise section9 was successfully destroyed"
  end
end
