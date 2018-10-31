require 'test_helper'

class RoadTransport3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road_transport3 = road_transport3s(:one)
  end

  test "should get index" do
    get road_transport3s_url
    assert_response :success
  end

  test "should get new" do
    get new_road_transport3_url
    assert_response :success
  end

  test "should create road_transport3" do
    assert_difference('RoadTransport3.count') do
      post road_transport3s_url, params: { road_transport3: { 2012-13: @road_transport3.2012-13, 2013-14: @road_transport3.2013-14, 2014-15: @road_transport3.2014-15, 2015-16: @road_transport3.2015-16, 2016-17: @road_transport3.2016-17, CAGR(2012-17): @road_transport3.CAGR(2012-17), Particular: @road_transport3.Particular } }
    end

    assert_redirected_to road_transport3_url(RoadTransport3.last)
  end

  test "should show road_transport3" do
    get road_transport3_url(@road_transport3)
    assert_response :success
  end

  test "should get edit" do
    get edit_road_transport3_url(@road_transport3)
    assert_response :success
  end

  test "should update road_transport3" do
    patch road_transport3_url(@road_transport3), params: { road_transport3: { 2012-13: @road_transport3.2012-13, 2013-14: @road_transport3.2013-14, 2014-15: @road_transport3.2014-15, 2015-16: @road_transport3.2015-16, 2016-17: @road_transport3.2016-17, CAGR(2012-17): @road_transport3.CAGR(2012-17), Particular: @road_transport3.Particular } }
    assert_redirected_to road_transport3_url(@road_transport3)
  end

  test "should destroy road_transport3" do
    assert_difference('RoadTransport3.count', -1) do
      delete road_transport3_url(@road_transport3)
    end

    assert_redirected_to road_transport3s_url
  end
end
