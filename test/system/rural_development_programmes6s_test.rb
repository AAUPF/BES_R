require "application_system_test_case"

class RuralDevelopmentProgrammes6sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes6 = rural_development_programmes6s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes6s_url
    assert_selector "h1", text: "Rural Development Programmes6s"
  end

  test "creating a Rural development programmes6" do
    visit rural_development_programmes6s_url
    click_on "New Rural Development Programmes6"

    fill_in "Allotment", with: @rural_development_programmes6.Allotment
    fill_in "Crop", with: @rural_development_programmes6.Crop
    fill_in "Lifting", with: @rural_development_programmes6.Lifting
    fill_in "Lifting Percentage", with: @rural_development_programmes6.Lifting_Percentage
    fill_in "Year", with: @rural_development_programmes6.Year
    click_on "Create Rural development programmes6"

    assert_text "Rural development programmes6 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes6" do
    visit rural_development_programmes6s_url
    click_on "Edit", match: :first

    fill_in "Allotment", with: @rural_development_programmes6.Allotment
    fill_in "Crop", with: @rural_development_programmes6.Crop
    fill_in "Lifting", with: @rural_development_programmes6.Lifting
    fill_in "Lifting Percentage", with: @rural_development_programmes6.Lifting_Percentage
    fill_in "Year", with: @rural_development_programmes6.Year
    click_on "Update Rural development programmes6"

    assert_text "Rural development programmes6 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes6" do
    visit rural_development_programmes6s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes6 was successfully destroyed"
  end
end
