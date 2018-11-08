require "application_system_test_case"

class Roads1sTest < ApplicationSystemTestCase
  setup do
    @roads1 = roads1s(:one)
  end

  test "visiting the index" do
    visit roads1s_url
    assert_selector "h1", text: "Roads1s"
  end

  test "creating a Roads1" do
    visit roads1s_url
    click_on "New Roads1"

    fill_in "2011 12", with: @roads1.2011-12
    fill_in "2012 13", with: @roads1.2012-13
    fill_in "2013 14", with: @roads1.2013-14
    fill_in "2014 15", with: @roads1.2014-15
    fill_in "2015 16 P", with: @roads1.2015-16_P
    fill_in "2016 17 Q", with: @roads1.2016-17_Q
    fill_in "Cagr 2011 16", with: @roads1.CAGR_2011-16
    fill_in "Sector", with: @roads1.Sector
    click_on "Create Roads1"

    assert_text "Roads1 was successfully created"
    click_on "Back"
  end

  test "updating a Roads1" do
    visit roads1s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @roads1.2011-12
    fill_in "2012 13", with: @roads1.2012-13
    fill_in "2013 14", with: @roads1.2013-14
    fill_in "2014 15", with: @roads1.2014-15
    fill_in "2015 16 P", with: @roads1.2015-16_P
    fill_in "2016 17 Q", with: @roads1.2016-17_Q
    fill_in "Cagr 2011 16", with: @roads1.CAGR_2011-16
    fill_in "Sector", with: @roads1.Sector
    click_on "Update Roads1"

    assert_text "Roads1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads1" do
    visit roads1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads1 was successfully destroyed"
  end
end
