require "application_system_test_case"

class RuralDevelopmentProgrammes7sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes7 = rural_development_programmes7s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes7s_url
    assert_selector "h1", text: "Rural Development Programmes7s"
  end

  test "creating a Rural development programmes7" do
    visit rural_development_programmes7s_url
    click_on "New Rural Development Programmes7"

    fill_in "2014 15", with: @rural_development_programmes7.2014-15
    fill_in "2015 16", with: @rural_development_programmes7.2015-16
    fill_in "2016 17", with: @rural_development_programmes7.2016-17
    fill_in "Indicator", with: @rural_development_programmes7.Indicator
    fill_in "Sector", with: @rural_development_programmes7.Sector
    click_on "Create Rural development programmes7"

    assert_text "Rural development programmes7 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes7" do
    visit rural_development_programmes7s_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @rural_development_programmes7.2014-15
    fill_in "2015 16", with: @rural_development_programmes7.2015-16
    fill_in "2016 17", with: @rural_development_programmes7.2016-17
    fill_in "Indicator", with: @rural_development_programmes7.Indicator
    fill_in "Sector", with: @rural_development_programmes7.Sector
    click_on "Update Rural development programmes7"

    assert_text "Rural development programmes7 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes7" do
    visit rural_development_programmes7s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes7 was successfully destroyed"
  end
end
