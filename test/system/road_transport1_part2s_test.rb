require "application_system_test_case"

class RoadTransport1Part2sTest < ApplicationSystemTestCase
  setup do
    @road_transport1_part2 = road_transport1_part2s(:one)
  end

  test "visiting the index" do
    visit road_transport1_part2s_url
    assert_selector "h1", text: "Road Transport1 Part2s"
  end

  test "creating a Road transport1 part2" do
    visit road_transport1_part2s_url
    click_on "New Road Transport1 Part2"

    fill_in "Buses", with: @road_transport1_part2.Buses
    fill_in "Goods Carrier Vehicles", with: @road_transport1_part2.Goods_Carrier_Vehicles
    fill_in "Light Motor Vehicles Passengers", with: @road_transport1_part2.Light_Motor_Vehicles_Passengers
    fill_in "State", with: @road_transport1_part2.State
    fill_in "Taxis", with: @road_transport1_part2.Taxis
    click_on "Create Road transport1 part2"

    assert_text "Road transport1 part2 was successfully created"
    click_on "Back"
  end

  test "updating a Road transport1 part2" do
    visit road_transport1_part2s_url
    click_on "Edit", match: :first

    fill_in "Buses", with: @road_transport1_part2.Buses
    fill_in "Goods Carrier Vehicles", with: @road_transport1_part2.Goods_Carrier_Vehicles
    fill_in "Light Motor Vehicles Passengers", with: @road_transport1_part2.Light_Motor_Vehicles_Passengers
    fill_in "State", with: @road_transport1_part2.State
    fill_in "Taxis", with: @road_transport1_part2.Taxis
    click_on "Update Road transport1 part2"

    assert_text "Road transport1 part2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Road transport1 part2" do
    visit road_transport1_part2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Road transport1 part2 was successfully destroyed"
  end
end
