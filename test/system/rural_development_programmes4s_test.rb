require "application_system_test_case"

class RuralDevelopmentProgrammes4sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes4 = rural_development_programmes4s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes4s_url
    assert_selector "h1", text: "Rural Development Programmes4s"
  end

  test "creating a Rural development programmes4" do
    visit rural_development_programmes4s_url
    click_on "New Rural Development Programmes4"

    fill_in "Annual Physical Target", with: @rural_development_programmes4.Annual_Physical_Target
    fill_in "Houses Completed For Sc And St", with: @rural_development_programmes4.Houses_Completed_for_SC_and_ST
    fill_in "Percentage Of Fund Utilisation", with: @rural_development_programmes4.Percentage_of_Fund_Utilisation
    fill_in "Total Houses Completed", with: @rural_development_programmes4.Total_Houses_Completed
    fill_in "Year", with: @rural_development_programmes4.Year
    click_on "Create Rural development programmes4"

    assert_text "Rural development programmes4 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes4" do
    visit rural_development_programmes4s_url
    click_on "Edit", match: :first

    fill_in "Annual Physical Target", with: @rural_development_programmes4.Annual_Physical_Target
    fill_in "Houses Completed For Sc And St", with: @rural_development_programmes4.Houses_Completed_for_SC_and_ST
    fill_in "Percentage Of Fund Utilisation", with: @rural_development_programmes4.Percentage_of_Fund_Utilisation
    fill_in "Total Houses Completed", with: @rural_development_programmes4.Total_Houses_Completed
    fill_in "Year", with: @rural_development_programmes4.Year
    click_on "Update Rural development programmes4"

    assert_text "Rural development programmes4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes4" do
    visit rural_development_programmes4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes4 was successfully destroyed"
  end
end
