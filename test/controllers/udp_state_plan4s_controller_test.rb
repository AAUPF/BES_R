require 'test_helper'

class UdpStatePlan4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_state_plan4 = udp_state_plan4s(:one)
  end

  test "should get index" do
    get udp_state_plan4s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_state_plan4_url
    assert_response :success
  end

  test "should create udp_state_plan4" do
    assert_difference('UdpStatePlan4.count') do
      post udp_state_plan4s_url, params: { udp_state_plan4: { Indicators: @udp_state_plan4.Indicators, No_of_households: @udp_state_plan4.No_of_households } }
    end

    assert_redirected_to udp_state_plan4_url(UdpStatePlan4.last)
  end

  test "should show udp_state_plan4" do
    get udp_state_plan4_url(@udp_state_plan4)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_state_plan4_url(@udp_state_plan4)
    assert_response :success
  end

  test "should update udp_state_plan4" do
    patch udp_state_plan4_url(@udp_state_plan4), params: { udp_state_plan4: { Indicators: @udp_state_plan4.Indicators, No_of_households: @udp_state_plan4.No_of_households } }
    assert_redirected_to udp_state_plan4_url(@udp_state_plan4)
  end

  test "should destroy udp_state_plan4" do
    assert_difference('UdpStatePlan4.count', -1) do
      delete udp_state_plan4_url(@udp_state_plan4)
    end

    assert_redirected_to udp_state_plan4s_url
  end
end
