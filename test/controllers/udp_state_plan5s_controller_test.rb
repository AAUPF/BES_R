require 'test_helper'

class UdpStatePlan5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_state_plan5 = udp_state_plan5s(:one)
  end

  test "should get index" do
    get udp_state_plan5s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_state_plan5_url
    assert_response :success
  end

  test "should create udp_state_plan5" do
    assert_difference('UdpStatePlan5.count') do
      post udp_state_plan5s_url, params: { udp_state_plan5: { Districts: @udp_state_plan5.Districts, Number_of_Household_covered: @udp_state_plan5.Number_of_Household_covered, Number_of_Households_to_be_covered: @udp_state_plan5.Number_of_Households_to_be_covered, Total_Number_of_Urban_Households: @udp_state_plan5.Total_Number_of_Urban_Households, Total_Number_of_Urban_Wards: @udp_state_plan5.Total_Number_of_Urban_Wards } }
    end

    assert_redirected_to udp_state_plan5_url(UdpStatePlan5.last)
  end

  test "should show udp_state_plan5" do
    get udp_state_plan5_url(@udp_state_plan5)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_state_plan5_url(@udp_state_plan5)
    assert_response :success
  end

  test "should update udp_state_plan5" do
    patch udp_state_plan5_url(@udp_state_plan5), params: { udp_state_plan5: { Districts: @udp_state_plan5.Districts, Number_of_Household_covered: @udp_state_plan5.Number_of_Household_covered, Number_of_Households_to_be_covered: @udp_state_plan5.Number_of_Households_to_be_covered, Total_Number_of_Urban_Households: @udp_state_plan5.Total_Number_of_Urban_Households, Total_Number_of_Urban_Wards: @udp_state_plan5.Total_Number_of_Urban_Wards } }
    assert_redirected_to udp_state_plan5_url(@udp_state_plan5)
  end

  test "should destroy udp_state_plan5" do
    assert_difference('UdpStatePlan5.count', -1) do
      delete udp_state_plan5_url(@udp_state_plan5)
    end

    assert_redirected_to udp_state_plan5s_url
  end
end
