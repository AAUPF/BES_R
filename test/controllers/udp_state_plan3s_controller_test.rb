require 'test_helper'

class UdpStatePlan3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_state_plan3 = udp_state_plan3s(:one)
  end

  test "should get index" do
    get udp_state_plan3s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_state_plan3_url
    assert_response :success
  end

  test "should create udp_state_plan3" do
    assert_difference('UdpStatePlan3.count') do
      post udp_state_plan3s_url, params: { udp_state_plan3: { 2016-17: @udp_state_plan3.2016-17, 2017-18: @udp_state_plan3.2017-18, 2018-19: @udp_state_plan3.2018-19, 2019-20: @udp_state_plan3.2019-20, Coverage: @udp_state_plan3.Coverage, Total: @udp_state_plan3.Total } }
    end

    assert_redirected_to udp_state_plan3_url(UdpStatePlan3.last)
  end

  test "should show udp_state_plan3" do
    get udp_state_plan3_url(@udp_state_plan3)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_state_plan3_url(@udp_state_plan3)
    assert_response :success
  end

  test "should update udp_state_plan3" do
    patch udp_state_plan3_url(@udp_state_plan3), params: { udp_state_plan3: { 2016-17: @udp_state_plan3.2016-17, 2017-18: @udp_state_plan3.2017-18, 2018-19: @udp_state_plan3.2018-19, 2019-20: @udp_state_plan3.2019-20, Coverage: @udp_state_plan3.Coverage, Total: @udp_state_plan3.Total } }
    assert_redirected_to udp_state_plan3_url(@udp_state_plan3)
  end

  test "should destroy udp_state_plan3" do
    assert_difference('UdpStatePlan3.count', -1) do
      delete udp_state_plan3_url(@udp_state_plan3)
    end

    assert_redirected_to udp_state_plan3s_url
  end
end
