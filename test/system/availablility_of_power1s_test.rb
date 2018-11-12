require "application_system_test_case"

class AvailablilityOfPower1sTest < ApplicationSystemTestCase
  setup do
    @availablility_of_power1 = availablility_of_power1s(:one)
  end

  test "visiting the index" do
    visit availablility_of_power1s_url
    assert_selector "h1", text: "Availablility Of Power1s"
  end

  test "creating a Availablility of power1" do
    visit availablility_of_power1s_url
    click_on "New Availablility Of Power1"

    fill_in "2011 12", with: @availablility_of_power1.2011-12
    fill_in "2012 13", with: @availablility_of_power1.2012-13
    fill_in "2013 14", with: @availablility_of_power1.2013-14
    fill_in "2014 15", with: @availablility_of_power1.2014-15
    fill_in "2015 16", with: @availablility_of_power1.2015-16
    fill_in "2016 17", with: @availablility_of_power1.2016-17
    fill_in "Sector", with: @availablility_of_power1.Sector
    click_on "Create Availablility of power1"

    assert_text "Availablility of power1 was successfully created"
    click_on "Back"
  end

  test "updating a Availablility of power1" do
    visit availablility_of_power1s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @availablility_of_power1.2011-12
    fill_in "2012 13", with: @availablility_of_power1.2012-13
    fill_in "2013 14", with: @availablility_of_power1.2013-14
    fill_in "2014 15", with: @availablility_of_power1.2014-15
    fill_in "2015 16", with: @availablility_of_power1.2015-16
    fill_in "2016 17", with: @availablility_of_power1.2016-17
    fill_in "Sector", with: @availablility_of_power1.Sector
    click_on "Update Availablility of power1"

    assert_text "Availablility of power1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Availablility of power1" do
    visit availablility_of_power1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Availablility of power1 was successfully destroyed"
  end
end
