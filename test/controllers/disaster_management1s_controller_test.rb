require 'test_helper'

class DisasterManagement1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disaster_management1 = disaster_management1s(:one)
  end

  test "should get index" do
    get disaster_management1s_url
    assert_response :success
  end

  test "should get new" do
    get new_disaster_management1_url
    assert_response :success
  end

  test "should create disaster_management1" do
    assert_difference('DisasterManagement1.count') do
      post disaster_management1s_url, params: { disaster_management1: { 2011-12: @disaster_management1.2011-12, 2012-13: @disaster_management1.2012-13, 2013-14: @disaster_management1.2013-14, 2014-15: @disaster_management1.2014-15, 2015-16: @disaster_management1.2015-16, 2016-17: @disaster_management1.2016-17, Sector: @disaster_management1.Sector } }
    end

    assert_redirected_to disaster_management1_url(DisasterManagement1.last)
  end

  test "should show disaster_management1" do
    get disaster_management1_url(@disaster_management1)
    assert_response :success
  end

  test "should get edit" do
    get edit_disaster_management1_url(@disaster_management1)
    assert_response :success
  end

  test "should update disaster_management1" do
    patch disaster_management1_url(@disaster_management1), params: { disaster_management1: { 2011-12: @disaster_management1.2011-12, 2012-13: @disaster_management1.2012-13, 2013-14: @disaster_management1.2013-14, 2014-15: @disaster_management1.2014-15, 2015-16: @disaster_management1.2015-16, 2016-17: @disaster_management1.2016-17, Sector: @disaster_management1.Sector } }
    assert_redirected_to disaster_management1_url(@disaster_management1)
  end

  test "should destroy disaster_management1" do
    assert_difference('DisasterManagement1.count', -1) do
      delete disaster_management1_url(@disaster_management1)
    end

    assert_redirected_to disaster_management1s_url
  end
end
