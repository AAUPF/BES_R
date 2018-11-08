require "application_system_test_case"

class RoadTransport2sTest < ApplicationSystemTestCase
  setup do
    @road_transport2 = road_transport2s(:one)
  end

  test "visiting the index" do
    visit road_transport2s_url
    assert_selector "h1", text: "Road Transport2s"
  end

  test "creating a Road transport2" do
    visit road_transport2s_url
    click_on "New Road Transport2"

    fill_in "2011 12", with: @road_transport2.2011-12
    fill_in "2012 13", with: @road_transport2.2012-13
    fill_in "2013 14", with: @road_transport2.2013-14
    fill_in "2014 15", with: @road_transport2.2014-15
    fill_in "2015 16", with: @road_transport2.2015-16
    fill_in "2016 17", with: @road_transport2.2016-17
    fill_in "Cagr 2011 17", with: @road_transport2.CAGR_2011-17
    fill_in "Sector", with: @road_transport2.Sector
    click_on "Create Road transport2"

    assert_text "Road transport2 was successfully created"
    click_on "Back"
  end

  test "updating a Road transport2" do
    visit road_transport2s_url
    click_on "Edit", match: :first

    fill_in "2011 12", with: @road_transport2.2011-12
    fill_in "2012 13", with: @road_transport2.2012-13
    fill_in "2013 14", with: @road_transport2.2013-14
    fill_in "2014 15", with: @road_transport2.2014-15
    fill_in "2015 16", with: @road_transport2.2015-16
    fill_in "2016 17", with: @road_transport2.2016-17
    fill_in "Cagr 2011 17", with: @road_transport2.CAGR_2011-17
    fill_in "Sector", with: @road_transport2.Sector
    click_on "Update Road transport2"

    assert_text "Road transport2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Road transport2" do
    visit road_transport2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Road transport2 was successfully destroyed"
  end
end
