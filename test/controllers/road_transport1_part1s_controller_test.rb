require 'test_helper'

class RoadTransport1Part1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road_transport1_part1 = road_transport1_part1s(:one)
  end

  test "should get index" do
    get road_transport1_part1s_url
    assert_response :success
  end

  test "should get new" do
    get new_road_transport1_part1_url
    assert_response :success
  end

  test "should create road_transport1_part1" do
    assert_difference('RoadTransport1Part1.count') do
      post road_transport1_part1s_url, params: { road_transport1_part1: { Cars: @road_transport1_part1.Cars, Jeeps: @road_transport1_part1.Jeeps, Miscellaneous: @road_transport1_part1.Miscellaneous, State: @road_transport1_part1.State, Two_Wheeler: @road_transport1_part1.Two_Wheeler } }
    end

    assert_redirected_to road_transport1_part1_url(RoadTransport1Part1.last)
  end

  test "should show road_transport1_part1" do
    get road_transport1_part1_url(@road_transport1_part1)
    assert_response :success
  end

  test "should get edit" do
    get edit_road_transport1_part1_url(@road_transport1_part1)
    assert_response :success
  end

  test "should update road_transport1_part1" do
    patch road_transport1_part1_url(@road_transport1_part1), params: { road_transport1_part1: { Cars: @road_transport1_part1.Cars, Jeeps: @road_transport1_part1.Jeeps, Miscellaneous: @road_transport1_part1.Miscellaneous, State: @road_transport1_part1.State, Two_Wheeler: @road_transport1_part1.Two_Wheeler } }
    assert_redirected_to road_transport1_part1_url(@road_transport1_part1)
  end

  test "should destroy road_transport1_part1" do
    assert_difference('RoadTransport1Part1.count', -1) do
      delete road_transport1_part1_url(@road_transport1_part1)
    end

    assert_redirected_to road_transport1_part1s_url
  end
end
