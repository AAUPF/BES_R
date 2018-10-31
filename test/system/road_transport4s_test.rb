require "application_system_test_case"

class RoadTransport4sTest < ApplicationSystemTestCase
  setup do
    @road_transport4 = road_transport4s(:one)
  end

  test "visiting the index" do
    visit road_transport4s_url
    assert_selector "h1", text: "Road Transport4s"
  end

  test "creating a Road transport4" do
    visit road_transport4s_url
    click_on "New Road Transport4"

    fill_in "Bus", with: @road_transport4.Bus
    fill_in "Car", with: @road_transport4.Car
    fill_in "Districts", with: @road_transport4.Districts
    fill_in "Jeep", with: @road_transport4.Jeep
    fill_in "Other", with: @road_transport4.Other
    fill_in "Taxi", with: @road_transport4.Taxi
    fill_in "Three Wheeler", with: @road_transport4.Three_Wheeler
    fill_in "Total", with: @road_transport4.Total
    fill_in "Tractor", with: @road_transport4.Tractor
    fill_in "Trailor", with: @road_transport4.Trailor
    fill_in "Truck", with: @road_transport4.Truck
    fill_in "Two Wheeler", with: @road_transport4.Two_Wheeler
    click_on "Create Road transport4"

    assert_text "Road transport4 was successfully created"
    click_on "Back"
  end

  test "updating a Road transport4" do
    visit road_transport4s_url
    click_on "Edit", match: :first

    fill_in "Bus", with: @road_transport4.Bus
    fill_in "Car", with: @road_transport4.Car
    fill_in "Districts", with: @road_transport4.Districts
    fill_in "Jeep", with: @road_transport4.Jeep
    fill_in "Other", with: @road_transport4.Other
    fill_in "Taxi", with: @road_transport4.Taxi
    fill_in "Three Wheeler", with: @road_transport4.Three_Wheeler
    fill_in "Total", with: @road_transport4.Total
    fill_in "Tractor", with: @road_transport4.Tractor
    fill_in "Trailor", with: @road_transport4.Trailor
    fill_in "Truck", with: @road_transport4.Truck
    fill_in "Two Wheeler", with: @road_transport4.Two_Wheeler
    click_on "Update Road transport4"

    assert_text "Road transport4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Road transport4" do
    visit road_transport4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Road transport4 was successfully destroyed"
  end
end
