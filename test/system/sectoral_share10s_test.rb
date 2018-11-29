require "application_system_test_case"

class SectoralShare10sTest < ApplicationSystemTestCase
  setup do
    @sectoral_share10 = sectoral_share10s(:one)
  end

  test "visiting the index" do
    visit sectoral_share10s_url
    assert_selector "h1", text: "Sectoral Share10s"
  end

  test "creating a Sectoral share10" do
    visit sectoral_share10s_url
    click_on "New Sectoral Share10"

    fill_in "2007 08", with: @sectoral_share10.2007-08
    fill_in "2008 09", with: @sectoral_share10.2008-09
    fill_in "2009 10", with: @sectoral_share10.2009-10
    fill_in "2010 11", with: @sectoral_share10.2010-11
    fill_in "2011 12", with: @sectoral_share10.2011-12
    fill_in "2012 13", with: @sectoral_share10.2012-13
    fill_in "2013 14", with: @sectoral_share10.2013-14
    fill_in "2014 15", with: @sectoral_share10.2014-15
    fill_in "2015 16", with: @sectoral_share10.2015-16
    fill_in "2016 17", with: @sectoral_share10.2016-17
    fill_in "Districts", with: @sectoral_share10.Districts
    click_on "Create Sectoral share10"

    assert_text "Sectoral share10 was successfully created"
    click_on "Back"
  end

  test "updating a Sectoral share10" do
    visit sectoral_share10s_url
    click_on "Edit", match: :first

    fill_in "2007 08", with: @sectoral_share10.2007-08
    fill_in "2008 09", with: @sectoral_share10.2008-09
    fill_in "2009 10", with: @sectoral_share10.2009-10
    fill_in "2010 11", with: @sectoral_share10.2010-11
    fill_in "2011 12", with: @sectoral_share10.2011-12
    fill_in "2012 13", with: @sectoral_share10.2012-13
    fill_in "2013 14", with: @sectoral_share10.2013-14
    fill_in "2014 15", with: @sectoral_share10.2014-15
    fill_in "2015 16", with: @sectoral_share10.2015-16
    fill_in "2016 17", with: @sectoral_share10.2016-17
    fill_in "Districts", with: @sectoral_share10.Districts
    click_on "Update Sectoral share10"

    assert_text "Sectoral share10 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sectoral share10" do
    visit sectoral_share10s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sectoral share10 was successfully destroyed"
  end
end
