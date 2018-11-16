require "application_system_test_case"

class RuralDevelopmentProgrammes5sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes5 = rural_development_programmes5s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes5s_url
    assert_selector "h1", text: "Rural Development Programmes5s"
  end

  test "creating a Rural development programmes5" do
    visit rural_development_programmes5s_url
    click_on "New Rural Development Programmes5"

    fill_in "No Of Pds Outlets", with: @rural_development_programmes5.No_of_PDS_Outlets
    fill_in "Percentage Share", with: @rural_development_programmes5.Percentage_Share
    fill_in "Social Background Of Pds Dealers", with: @rural_development_programmes5.Social_Background_of_PDS_Dealers
    fill_in "Year", with: @rural_development_programmes5.Year
    click_on "Create Rural development programmes5"

    assert_text "Rural development programmes5 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes5" do
    visit rural_development_programmes5s_url
    click_on "Edit", match: :first

    fill_in "No Of Pds Outlets", with: @rural_development_programmes5.No_of_PDS_Outlets
    fill_in "Percentage Share", with: @rural_development_programmes5.Percentage_Share
    fill_in "Social Background Of Pds Dealers", with: @rural_development_programmes5.Social_Background_of_PDS_Dealers
    fill_in "Year", with: @rural_development_programmes5.Year
    click_on "Update Rural development programmes5"

    assert_text "Rural development programmes5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes5" do
    visit rural_development_programmes5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes5 was successfully destroyed"
  end
end
