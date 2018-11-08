require 'test_helper'

class RoadTransport2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @road_transport2 = road_transport2s(:one)
  end

  test "should get index" do
    get road_transport2s_url
    assert_response :success
  end

  test "should get new" do
    get new_road_transport2_url
    assert_response :success
  end

  test "should create road_transport2" do
    assert_difference('RoadTransport2.count') do
      post road_transport2s_url, params: { road_transport2: { 2011-12: @road_transport2.2011-12, 2012-13: @road_transport2.2012-13, 2013-14: @road_transport2.2013-14, 2014-15: @road_transport2.2014-15, 2015-16: @road_transport2.2015-16, 2016-17: @road_transport2.2016-17, CAGR_2011-17: @road_transport2.CAGR_2011-17, Sector: @road_transport2.Sector } }
    end

    assert_redirected_to road_transport2_url(RoadTransport2.last)
  end

  test "should show road_transport2" do
    get road_transport2_url(@road_transport2)
    assert_response :success
  end

  test "should get edit" do
    get edit_road_transport2_url(@road_transport2)
    assert_response :success
  end

  test "should update road_transport2" do
    patch road_transport2_url(@road_transport2), params: { road_transport2: { 2011-12: @road_transport2.2011-12, 2012-13: @road_transport2.2012-13, 2013-14: @road_transport2.2013-14, 2014-15: @road_transport2.2014-15, 2015-16: @road_transport2.2015-16, 2016-17: @road_transport2.2016-17, CAGR_2011-17: @road_transport2.CAGR_2011-17, Sector: @road_transport2.Sector } }
    assert_redirected_to road_transport2_url(@road_transport2)
  end

  test "should destroy road_transport2" do
    assert_difference('RoadTransport2.count', -1) do
      delete road_transport2_url(@road_transport2)
    end

    assert_redirected_to road_transport2s_url
  end
end
