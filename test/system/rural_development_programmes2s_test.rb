require "application_system_test_case"

class RuralDevelopmentProgrammes2sTest < ApplicationSystemTestCase
  setup do
    @rural_development_programmes2 = rural_development_programmes2s(:one)
  end

  test "visiting the index" do
    visit rural_development_programmes2s_url
    assert_selector "h1", text: "Rural Development Programmes2s"
  end

  test "creating a Rural development programmes2" do
    visit rural_development_programmes2s_url
    click_on "New Rural Development Programmes2"

    fill_in "2011 12", with: @rural_development_programmes2.2011-12
    fill_in "2012 13", with: @rural_development_programmes2.2012-13
    fill_in "2013 14", with: @rural_development_programmes2.2013-14
    fill_in "2014 15", with: @rural_development_programmes2.2014-15
    fill_in "2015 16", with: @rural_development_programmes2.2015-16
    fill_in "2016 17", with: @rural_development_programmes2.2016-17
    fill_in "Performance", with: @rural_development_programmes2.Performance
    click_on "Create Rural development programmes2"

    assert_text "Rural development programmes2 was successfully created"
    click_on "Back"
  end

  test "updating a Rural development programmes2" do
    visit rural_development_programmes2s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @rural_development_programmes2.2011-12
    fill_in "2012 13", with: @rural_development_programmes2.2012-13
    fill_in "2013 14", with: @rural_development_programmes2.2013-14
    fill_in "2014 15", with: @rural_development_programmes2.2014-15
    fill_in "2015 16", with: @rural_development_programmes2.2015-16
    fill_in "2016 17", with: @rural_development_programmes2.2016-17
    fill_in "Performance", with: @rural_development_programmes2.Performance
    click_on "Update Rural development programmes2"

    assert_text "Rural development programmes2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rural development programmes2" do
    visit rural_development_programmes2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rural development programmes2 was successfully destroyed"
  end
end
