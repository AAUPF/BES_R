require "application_system_test_case"

class DisasterManagement1sTest < ApplicationSystemTestCase
  setup do
    @disaster_management1 = disaster_management1s(:one)
  end

  test "visiting the index" do
    visit disaster_management1s_url
    assert_selector "h1", text: "Disaster Management1s"
  end

  test "creating a Disaster management1" do
    visit disaster_management1s_url
    click_on "New Disaster Management1"

    fill_in "2011 12", with: @disaster_management1.2011-12
    fill_in "2012 13", with: @disaster_management1.2012-13
    fill_in "2013 14", with: @disaster_management1.2013-14
    fill_in "2014 15", with: @disaster_management1.2014-15
    fill_in "2015 16", with: @disaster_management1.2015-16
    fill_in "2016 17", with: @disaster_management1.2016-17
    fill_in "Sector", with: @disaster_management1.Sector
    click_on "Create Disaster management1"

    assert_text "Disaster management1 was successfully created"
    click_on "Back"
  end

  test "updating a Disaster management1" do
    visit disaster_management1s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @disaster_management1.2011-12
    fill_in "2012 13", with: @disaster_management1.2012-13
    fill_in "2013 14", with: @disaster_management1.2013-14
    fill_in "2014 15", with: @disaster_management1.2014-15
    fill_in "2015 16", with: @disaster_management1.2015-16
    fill_in "2016 17", with: @disaster_management1.2016-17
    fill_in "Sector", with: @disaster_management1.Sector
    click_on "Update Disaster management1"

    assert_text "Disaster management1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Disaster management1" do
    visit disaster_management1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Disaster management1 was successfully destroyed"
  end
end
