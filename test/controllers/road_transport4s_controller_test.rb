require 'test_helper'

class RoadTransport4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road_transport4 = road_transport4s(:one)
  end

  test "should get index" do
    get road_transport4s_url
    assert_response :success
  end

  test "should get new" do
    get new_road_transport4_url
    assert_response :success
  end

  test "should create road_transport4" do
    assert_difference('RoadTransport4.count') do
      post road_transport4s_url, params: { road_transport4: { Bus: @road_transport4.Bus, Car: @road_transport4.Car, Districts: @road_transport4.Districts, Jeep: @road_transport4.Jeep, Other: @road_transport4.Other, Taxi: @road_transport4.Taxi, Three_Wheeler: @road_transport4.Three_Wheeler, Total: @road_transport4.Total, Tractor: @road_transport4.Tractor, Trailor: @road_transport4.Trailor, Truck: @road_transport4.Truck, Two_Wheeler: @road_transport4.Two_Wheeler } }
    end

    assert_redirected_to road_transport4_url(RoadTransport4.last)
  end

  test "should show road_transport4" do
    get road_transport4_url(@road_transport4)
    assert_response :success
  end

  test "should get edit" do
    get edit_road_transport4_url(@road_transport4)
    assert_response :success
  end

  test "should update road_transport4" do
    patch road_transport4_url(@road_transport4), params: { road_transport4: { Bus: @road_transport4.Bus, Car: @road_transport4.Car, Districts: @road_transport4.Districts, Jeep: @road_transport4.Jeep, Other: @road_transport4.Other, Taxi: @road_transport4.Taxi, Three_Wheeler: @road_transport4.Three_Wheeler, Total: @road_transport4.Total, Tractor: @road_transport4.Tractor, Trailor: @road_transport4.Trailor, Truck: @road_transport4.Truck, Two_Wheeler: @road_transport4.Two_Wheeler } }
    assert_redirected_to road_transport4_url(@road_transport4)
  end

  test "should destroy road_transport4" do
    assert_difference('RoadTransport4.count', -1) do
      delete road_transport4_url(@road_transport4)
    end

    assert_redirected_to road_transport4s_url
  end
end
