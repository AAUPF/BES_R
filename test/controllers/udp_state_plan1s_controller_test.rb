require 'test_helper'

class UdpStatePlan1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_state_plan1 = udp_state_plan1s(:one)
  end

  test "should get index" do
    get udp_state_plan1s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_state_plan1_url
    assert_response :success
  end

  test "should create udp_state_plan1" do
    assert_difference('UdpStatePlan1.count') do
      post udp_state_plan1s_url, params: { udp_state_plan1: { Indicators: @udp_state_plan1.Indicators, No_of_households: @udp_state_plan1.No_of_households } }
    end

    assert_redirected_to udp_state_plan1_url(UdpStatePlan1.last)
  end

  test "should show udp_state_plan1" do
    get udp_state_plan1_url(@udp_state_plan1)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_state_plan1_url(@udp_state_plan1)
    assert_response :success
  end

  test "should update udp_state_plan1" do
    patch udp_state_plan1_url(@udp_state_plan1), params: { udp_state_plan1: { Indicators: @udp_state_plan1.Indicators, No_of_households: @udp_state_plan1.No_of_households } }
    assert_redirected_to udp_state_plan1_url(@udp_state_plan1)
  end

  test "should destroy udp_state_plan1" do
    assert_difference('UdpStatePlan1.count', -1) do
      delete udp_state_plan1_url(@udp_state_plan1)
    end

    assert_redirected_to udp_state_plan1s_url
  end
end
