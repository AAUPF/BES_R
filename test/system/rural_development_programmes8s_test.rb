require "application_system_test_case"

class RuralDevelopmentProgrammes8sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes8 = rural_development_programmes8s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes8s_url
    assert_selector "h1", text: "Rural Development Programmes8s"
  end

  test "creating a Rural development programmes8" do
    visit rural_development_programmes8s_url
    click_on "New Rural Development Programmes8"

    fill_in "Districts", with: @rural_development_programmes8.Districts
    fill_in "Fund Available", with: @rural_development_programmes8.Fund_available
    fill_in "Fund Utilised", with: @rural_development_programmes8.Fund_utilised
    fill_in "Percentage Of Utilisation", with: @rural_development_programmes8.Percentage_of_utilisation
    fill_in "Year", with: @rural_development_programmes8.Year
    click_on "Create Rural development programmes8"

    assert_text "Rural development programmes8 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes8" do
    visit rural_development_programmes8s_url
    click_on "Edit", match: :first

    fill_in "Districts", with: @rural_development_programmes8.Districts
    fill_in "Fund Available", with: @rural_development_programmes8.Fund_available
    fill_in "Fund Utilised", with: @rural_development_programmes8.Fund_utilised
    fill_in "Percentage Of Utilisation", with: @rural_development_programmes8.Percentage_of_utilisation
    fill_in "Year", with: @rural_development_programmes8.Year
    click_on "Update Rural development programmes8"

    assert_text "Rural development programmes8 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes8" do
    visit rural_development_programmes8s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes8 was successfully destroyed"
  end
end
