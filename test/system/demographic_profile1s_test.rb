require "application_system_test_case"

class DemographicProfile1sTest < ApplicationSystemTestCase
  setup do
    @demographic_profile1 = demographic_profile1s(:one)
  end

  test "visiting the index" do
    visit demographic_profile1s_url
    assert_selector "h1", text: "Demographic Profile1s"
  end

  test "creating a Demographic profile1" do
    visit demographic_profile1s_url
    click_on "New Demographic Profile1"

    fill_in "Bihar", with: @demographic_profile1.Bihar
    fill_in "Demographic Indicator", with: @demographic_profile1.Demographic_Indicator
    fill_in "India", with: @demographic_profile1.India
    fill_in "Year", with: @demographic_profile1.Year
    click_on "Create Demographic profile1"

    assert_text "Demographic profile1 was successfully created"
    click_on "Back"
  end

  test "updating a Demographic profile1" do
    visit demographic_profile1s_url
    click_on "Edit", match: :first

    fill_in "Bihar", with: @demographic_profile1.Bihar
    fill_in "Demographic Indicator", with: @demographic_profile1.Demographic_Indicator
    fill_in "India", with: @demographic_profile1.India
    fill_in "Year", with: @demographic_profile1.Year
    click_on "Update Demographic profile1"

    assert_text "Demographic profile1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Demographic profile1" do
    visit demographic_profile1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Demographic profile1 was successfully destroyed"
  end
end
