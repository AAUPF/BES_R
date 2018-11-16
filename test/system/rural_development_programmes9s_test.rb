require "application_system_test_case"

class RuralDevelopmentProgrammes9sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes9 = rural_development_programmes9s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes9s_url
    assert_selector "h1", text: "Rural Development Programmes9s"
  end

  test "creating a Rural development programmes9" do
    visit rural_development_programmes9s_url
    click_on "New Rural Development Programmes9"

    fill_in "Dealers Belonging To Bc Or Ebc", with: @rural_development_programmes9.Dealers_belonging_to_BC_or_EBC
    fill_in "Dealers Belonging To General", with: @rural_development_programmes9.Dealers_belonging_to_General
    fill_in "Dealers Belonging To Minority", with: @rural_development_programmes9.Dealers_belonging_to_Minority
    fill_in "Dealers Belonging To Sc Or St", with: @rural_development_programmes9.Dealers_belonging_to_SC_or_ST
    fill_in "Dealers Belonging To Women", with: @rural_development_programmes9.Dealers_belonging_to_Women
    fill_in "Dealers Belonging To Women Or Other Shg", with: @rural_development_programmes9.Dealers_belonging_to_Women_or_Other_SHG
    fill_in "Dealers From Helper Samiti Or Pacs Or Samiti Of Exarmy Personnel", with: @rural_development_programmes9.Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel
    fill_in "Districts", with: @rural_development_programmes9.Districts
    fill_in "Number Of Dealers", with: @rural_development_programmes9.Number_of_Dealers
    fill_in "Total", with: @rural_development_programmes9.Total
    click_on "Create Rural development programmes9"

    assert_text "Rural development programmes9 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes9" do
    visit rural_development_programmes9s_url
    click_on "Edit", match: :first

    fill_in "Dealers Belonging To Bc Or Ebc", with: @rural_development_programmes9.Dealers_belonging_to_BC_or_EBC
    fill_in "Dealers Belonging To General", with: @rural_development_programmes9.Dealers_belonging_to_General
    fill_in "Dealers Belonging To Minority", with: @rural_development_programmes9.Dealers_belonging_to_Minority
    fill_in "Dealers Belonging To Sc Or St", with: @rural_development_programmes9.Dealers_belonging_to_SC_or_ST
    fill_in "Dealers Belonging To Women", with: @rural_development_programmes9.Dealers_belonging_to_Women
    fill_in "Dealers Belonging To Women Or Other Shg", with: @rural_development_programmes9.Dealers_belonging_to_Women_or_Other_SHG
    fill_in "Dealers From Helper Samiti Or Pacs Or Samiti Of Exarmy Personnel", with: @rural_development_programmes9.Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel
    fill_in "Districts", with: @rural_development_programmes9.Districts
    fill_in "Number Of Dealers", with: @rural_development_programmes9.Number_of_Dealers
    fill_in "Total", with: @rural_development_programmes9.Total
    click_on "Update Rural development programmes9"

    assert_text "Rural development programmes9 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes9" do
    visit rural_development_programmes9s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes9 was successfully destroyed"
  end
end
