require "application_system_test_case"

class RoadTransport3sTest < ApplicationSystemTestCase
  setup do
    @road_transport3 = road_transport3s(:one)
  end

  test "visiting the index" do
    visit road_transport3s_url
    assert_selector "h1", text: "Road Transport3s"
  end

  test "creating a Road transport3" do
    visit road_transport3s_url
    click_on "New Road Transport3"

    fill_in "2012 13", with: @road_transport3.2012-13
    fill_in "2013 14", with: @road_transport3.2013-14
    fill_in "2014 15", with: @road_transport3.2014-15
    fill_in "2015 16", with: @road_transport3.2015-16
    fill_in "2016 17", with: @road_transport3.2016-17
    fill_in "Cagr(2012 17)", with: @road_transport3.CAGR(2012-17)
    fill_in "Particular", with: @road_transport3.Particular
    click_on "Create Road transport3"

    assert_text "Road transport3 was successfully created"
    click_on "Back"
  end

  test "updating a Road transport3" do
    visit road_transport3s_url
    click_on "Edit", match: :first

    fill_in "2012 13", with: @road_transport3.2012-13
    fill_in "2013 14", with: @road_transport3.2013-14
    fill_in "2014 15", with: @road_transport3.2014-15
    fill_in "2015 16", with: @road_transport3.2015-16
    fill_in "2016 17", with: @road_transport3.2016-17
    fill_in "Cagr(2012 17)", with: @road_transport3.CAGR(2012-17)
    fill_in "Particular", with: @road_transport3.Particular
    click_on "Update Road transport3"

    assert_text "Road transport3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Road transport3" do
    visit road_transport3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Road transport3 was successfully destroyed"
  end
end
