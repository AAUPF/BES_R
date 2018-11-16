require "application_system_test_case"

class RuralDevelopmentProgrammes3sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes3 = rural_development_programmes3s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes3s_url
    assert_selector "h1", text: "Rural Development Programmes3s"
  end

  test "creating a Rural development programmes3" do
    visit rural_development_programmes3s_url
    click_on "New Rural Development Programmes3"

    fill_in "2014 15", with: @rural_development_programmes3.2014-15
    fill_in "2015 16", with: @rural_development_programmes3.2015-16
    fill_in "2016 17", with: @rural_development_programmes3.2016-17
    fill_in "Indicator", with: @rural_development_programmes3.Indicator
    fill_in "Sector", with: @rural_development_programmes3.Sector
    click_on "Create Rural development programmes3"

    assert_text "Rural development programmes3 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes3" do
    visit rural_development_programmes3s_url
    click_on "Edit", match: :first

    fill_in "2014 15", with: @rural_development_programmes3.2014-15
    fill_in "2015 16", with: @rural_development_programmes3.2015-16
    fill_in "2016 17", with: @rural_development_programmes3.2016-17
    fill_in "Indicator", with: @rural_development_programmes3.Indicator
    fill_in "Sector", with: @rural_development_programmes3.Sector
    click_on "Update Rural development programmes3"

    assert_text "Rural development programmes3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes3" do
    visit rural_development_programmes3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes3 was successfully destroyed"
  end
end
