require "application_system_test_case"

class DeficitManagement4sTest < ApplicationSystemTestCase
  setup do
    @deficit_management4 = deficit_management4s(:one)
  end

  test "visiting the index" do
    visit deficit_management4s_url
    assert_selector "h1", text: "Deficit Management4s"
  end

  test "creating a Deficit management4" do
    visit deficit_management4s_url
    click_on "New Deficit Management4"

    fill_in "2012 13", with: @deficit_management4.2012-13
    fill_in "2013 14", with: @deficit_management4.2013-14
    fill_in "2014 15", with: @deficit_management4.2014-15
    fill_in "2015 16", with: @deficit_management4.2015-16
    fill_in "2016 17", with: @deficit_management4.2016-17
    fill_in "2017 18 Be", with: @deficit_management4.2017-18_BE
    fill_in "Indicator", with: @deficit_management4.Indicator
    fill_in "Sector", with: @deficit_management4.Sector
    click_on "Create Deficit management4"

    assert_text "Deficit management4 was successfully created"
    click_on "Back"
  end

  test "updating a Deficit management4" do
    visit deficit_management4s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @deficit_management4.2012-13
    fill_in "2013 14", with: @deficit_management4.2013-14
    fill_in "2014 15", with: @deficit_management4.2014-15
    fill_in "2015 16", with: @deficit_management4.2015-16
    fill_in "2016 17", with: @deficit_management4.2016-17
    fill_in "2017 18 Be", with: @deficit_management4.2017-18_BE
    fill_in "Indicator", with: @deficit_management4.Indicator
    fill_in "Sector", with: @deficit_management4.Sector
    click_on "Update Deficit management4"

    assert_text "Deficit management4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Deficit management4" do
    visit deficit_management4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deficit management4 was successfully destroyed"
  end
end
