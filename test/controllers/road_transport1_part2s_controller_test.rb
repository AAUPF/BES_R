require 'test_helper'

class RoadTransport1Part2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road_transport1_part2 = road_transport1_part2s(:one)
  end

  test "should get index" do
    get road_transport1_part2s_url
    assert_response :success
  end

  test "should get new" do
    get new_road_transport1_part2_url
    assert_response :success
  end

  test "should create road_transport1_part2" do
    assert_difference('RoadTransport1Part2.count') do
      post road_transport1_part2s_url, params: { road_transport1_part2: { Buses: @road_transport1_part2.Buses, Goods_Carrier_Vehicles: @road_transport1_part2.Goods_Carrier_Vehicles, Light_Motor_Vehicles_Passengers: @road_transport1_part2.Light_Motor_Vehicles_Passengers, State: @road_transport1_part2.State, Taxis: @road_transport1_part2.Taxis } }
    end

    assert_redirected_to road_transport1_part2_url(RoadTransport1Part2.last)
  end

  test "should show road_transport1_part2" do
    get road_transport1_part2_url(@road_transport1_part2)
    assert_response :success
  end

  test "should get edit" do
    get edit_road_transport1_part2_url(@road_transport1_part2)
    assert_response :success
  end

  test "should update road_transport1_part2" do
    patch road_transport1_part2_url(@road_transport1_part2), params: { road_transport1_part2: { Buses: @road_transport1_part2.Buses, Goods_Carrier_Vehicles: @road_transport1_part2.Goods_Carrier_Vehicles, Light_Motor_Vehicles_Passengers: @road_transport1_part2.Light_Motor_Vehicles_Passengers, State: @road_transport1_part2.State, Taxis: @road_transport1_part2.Taxis } }
    assert_redirected_to road_transport1_part2_url(@road_transport1_part2)
  end

  test "should destroy road_transport1_part2" do
    assert_difference('RoadTransport1Part2.count', -1) do
      delete road_transport1_part2_url(@road_transport1_part2)
    end

    assert_redirected_to road_transport1_part2s_url
  end
end
