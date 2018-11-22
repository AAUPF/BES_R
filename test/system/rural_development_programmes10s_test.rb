require "application_system_test_case"

class RuralDevelopmentProgrammes10sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes10 = rural_development_programmes10s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes10s_url
    assert_selector "h1", text: "Rural Development Programmes10s"
  end

  test "creating a Rural development programmes10" do
    visit rural_development_programmes10s_url
    click_on "New Rural Development Programmes10"

    fill_in "Allotment", with: @rural_development_programmes10.Allotment
    fill_in "Crops", with: @rural_development_programmes10.Crops
    fill_in "Districts", with: @rural_development_programmes10.Districts
    fill_in "Lifting", with: @rural_development_programmes10.Lifting
    fill_in "Lifting Percentage", with: @rural_development_programmes10.Lifting_Percentage
    click_on "Create Rural development programmes10"

    assert_text "Rural development programmes10 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes10" do
    visit rural_development_programmes10s_url
    click_on "Edit", match: :first

    fill_in "Allotment", with: @rural_development_programmes10.Allotment
    fill_in "Crops", with: @rural_development_programmes10.Crops
    fill_in "Districts", with: @rural_development_programmes10.Districts
    fill_in "Lifting", with: @rural_development_programmes10.Lifting
    fill_in "Lifting Percentage", with: @rural_development_programmes10.Lifting_Percentage
    click_on "Update Rural development programmes10"

    assert_text "Rural development programmes10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes10" do
    visit rural_development_programmes10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes10 was successfully destroyed"
  end
end
