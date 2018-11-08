require "application_system_test_case"

class Roads2sTest < ApplicationSystemTestCase
  setup do
    @roads2 = roads2s(:one)
  end

  test "visiting the index" do
    visit roads2s_url
    assert_selector "h1", text: "Roads2s"
  end

  test "creating a Roads2" do
    visit roads2s_url
    click_on "New Roads2"

    fill_in "2007 08", with: @roads2.2007-08
    fill_in "2011 12", with: @roads2.2011-12
    fill_in "2012 13", with: @roads2.2012-13
    fill_in "2013 14", with: @roads2.2013-14
    fill_in "2014 15", with: @roads2.2014-15
    fill_in "2015 16", with: @roads2.2015-16
    fill_in "2016 17", with: @roads2.2016-17
    fill_in "2017 18", with: @roads2.2017-18
    fill_in "Cagr (2014 18)", with: @roads2.CAGR (2014-18)
    fill_in "Indicator", with: @roads2.Indicator
    fill_in "Sector", with: @roads2.Sector
    click_on "Create Roads2"

    assert_text "Roads2 was successfully created"
    click_on "Back"
  end

  test "updating a Roads2" do
    visit roads2s_url
    click_on "Edit", match: :first

    fill_in "2007 08", with: @roads2.2007-08
    fill_in "2011 12", with: @roads2.2011-12
    fill_in "2012 13", with: @roads2.2012-13
    fill_in "2013 14", with: @roads2.2013-14
    fill_in "2014 15", with: @roads2.2014-15
    fill_in "2015 16", with: @roads2.2015-16
    fill_in "2016 17", with: @roads2.2016-17
    fill_in "2017 18", with: @roads2.2017-18
    fill_in "Cagr (2014 18)", with: @roads2.CAGR (2014-18)
    fill_in "Indicator", with: @roads2.Indicator
    fill_in "Sector", with: @roads2.Sector
    click_on "Update Roads2"

    assert_text "Roads2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Roads2" do
    visit roads2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roads2 was successfully destroyed"
  end
end
