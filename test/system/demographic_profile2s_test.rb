require "application_system_test_case"

class DemographicProfile2sTest < ApplicationSystemTestCase
  setup do
    @demographic_profile2 = demographic_profile2s(:one)
  end

  test "visiting the index" do
    visit demographic_profile2s_url
    assert_selector "h1", text: "Demographic Profile2s"
  end

  test "creating a Demographic profile2" do
    visit demographic_profile2s_url
    click_on "New Demographic Profile2"

    fill_in "Decadal Growth", with: @demographic_profile2.Decadal_Growth
    fill_in "Density", with: @demographic_profile2.Density
    fill_in "Districts", with: @demographic_profile2.Districts
    fill_in "Percentage Population", with: @demographic_profile2.Percentage_Population
    fill_in "Population", with: @demographic_profile2.Population
    fill_in "Sex Ratio Child", with: @demographic_profile2.Sex_Ratio_Child
    fill_in "Sex Ratio Overall", with: @demographic_profile2.Sex_Ratio_Overall
    fill_in "Urbanisation", with: @demographic_profile2.Urbanisation
    fill_in "Year", with: @demographic_profile2.Year
    click_on "Create Demographic profile2"

    assert_text "Demographic profile2 was successfully created"
    click_on "Back"
  end

  test "updating a Demographic profile2" do
    visit demographic_profile2s_url
    click_on "Edit", match: :first

    fill_in "Decadal Growth", with: @demographic_profile2.Decadal_Growth
    fill_in "Density", with: @demographic_profile2.Density
    fill_in "Districts", with: @demographic_profile2.Districts
    fill_in "Percentage Population", with: @demographic_profile2.Percentage_Population
    fill_in "Population", with: @demographic_profile2.Population
    fill_in "Sex Ratio Child", with: @demographic_profile2.Sex_Ratio_Child
    fill_in "Sex Ratio Overall", with: @demographic_profile2.Sex_Ratio_Overall
    fill_in "Urbanisation", with: @demographic_profile2.Urbanisation
    fill_in "Year", with: @demographic_profile2.Year
    click_on "Update Demographic profile2"

    assert_text "Demographic profile2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Demographic profile2" do
    visit demographic_profile2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Demographic profile2 was successfully destroyed"
  end
end
