require "application_system_test_case"

class Tourism3sTest < ApplicationSystemTestCase
  setup do
    @tourism3 = tourism3s(:one)
  end

  test "visiting the index" do
    visit tourism3s_url
    assert_selector "h1", text: "Tourism3s"
  end

  test "creating a Tourism3" do
    visit tourism3s_url
    click_on "New Tourism3"

    fill_in "2012", with: @tourism3.2012
    fill_in "2013", with: @tourism3.2013
    fill_in "2014", with: @tourism3.2014
    fill_in "2015", with: @tourism3.2015
    fill_in "2016", with: @tourism3.2016
    fill_in "2017", with: @tourism3.2017
    fill_in "Sector", with: @tourism3.Sector
    fill_in "Tourist", with: @tourism3.Tourist
    click_on "Create Tourism3"

    assert_text "Tourism3 was successfully created"
    click_on "Back"
  end

  test "updating a Tourism3" do
    visit tourism3s_url
    click_on "Edit", match: :first

    fill_in "2012", with: @tourism3.2012
    fill_in "2013", with: @tourism3.2013
    fill_in "2014", with: @tourism3.2014
    fill_in "2015", with: @tourism3.2015
    fill_in "2016", with: @tourism3.2016
    fill_in "2017", with: @tourism3.2017
    fill_in "Sector", with: @tourism3.Sector
    fill_in "Tourist", with: @tourism3.Tourist
    click_on "Update Tourism3"

    assert_text "Tourism3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tourism3" do
    visit tourism3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tourism3 was successfully destroyed"
  end
end
