require 'test_helper'

class UdpStatePlan2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_state_plan2 = udp_state_plan2s(:one)
  end

  test "should get index" do
    get udp_state_plan2s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_state_plan2_url
    assert_response :success
  end

  test "should create udp_state_plan2" do
    assert_difference('UdpStatePlan2.count') do
      post udp_state_plan2s_url, params: { udp_state_plan2: { Districts: @udp_state_plan2.Districts, Number_of_Households_Having_Access_to_Tap_Water_2016_17: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_17, Number_of_Households_Having_Access_to_Tap_Water_2016_18: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_18, Number_of_Households_Having_Access_to_Tap_Water_2017_18: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2017_18, Number_of_Households_Having_Piped_Water_Supply: @udp_state_plan2.Number_of_Households_Having_Piped_Water_Supply, Total_Number_of_Urban_Households: @udp_state_plan2.Total_Number_of_Urban_Households, Total_Number_of_Urban_Ward: @udp_state_plan2.Total_Number_of_Urban_Ward } }
    end

    assert_redirected_to udp_state_plan2_url(UdpStatePlan2.last)
  end

  test "should show udp_state_plan2" do
    get udp_state_plan2_url(@udp_state_plan2)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_state_plan2_url(@udp_state_plan2)
    assert_response :success
  end

  test "should update udp_state_plan2" do
    patch udp_state_plan2_url(@udp_state_plan2), params: { udp_state_plan2: { Districts: @udp_state_plan2.Districts, Number_of_Households_Having_Access_to_Tap_Water_2016_17: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_17, Number_of_Households_Having_Access_to_Tap_Water_2016_18: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2016_18, Number_of_Households_Having_Access_to_Tap_Water_2017_18: @udp_state_plan2.Number_of_Households_Having_Access_to_Tap_Water_2017_18, Number_of_Households_Having_Piped_Water_Supply: @udp_state_plan2.Number_of_Households_Having_Piped_Water_Supply, Total_Number_of_Urban_Households: @udp_state_plan2.Total_Number_of_Urban_Households, Total_Number_of_Urban_Ward: @udp_state_plan2.Total_Number_of_Urban_Ward } }
    assert_redirected_to udp_state_plan2_url(@udp_state_plan2)
  end

  test "should destroy udp_state_plan2" do
    assert_difference('UdpStatePlan2.count', -1) do
      delete udp_state_plan2_url(@udp_state_plan2)
    end

    assert_redirected_to udp_state_plan2s_url
  end
end
