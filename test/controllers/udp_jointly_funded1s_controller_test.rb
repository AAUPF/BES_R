require 'test_helper'

class UdpJointlyFunded1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded1 = udp_jointly_funded1s(:one)
  end

  test "should get index" do
    get udp_jointly_funded1s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded1_url
    assert_response :success
  end

  test "should create udp_jointly_funded1" do
    assert_difference('UdpJointlyFunded1.count') do
      post udp_jointly_funded1s_url, params: { udp_jointly_funded1: { Components_Categories: @udp_jointly_funded1.Components_Categories, SubProject_cost_sanctioned: @udp_jointly_funded1.SubProject_cost_sanctioned, Total_Expenditure_till_Nov_2017: @udp_jointly_funded1.Total_Expenditure_till_Nov_2017 } }
    end

    assert_redirected_to udp_jointly_funded1_url(UdpJointlyFunded1.last)
  end

  test "should show udp_jointly_funded1" do
    get udp_jointly_funded1_url(@udp_jointly_funded1)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded1_url(@udp_jointly_funded1)
    assert_response :success
  end

  test "should update udp_jointly_funded1" do
    patch udp_jointly_funded1_url(@udp_jointly_funded1), params: { udp_jointly_funded1: { Components_Categories: @udp_jointly_funded1.Components_Categories, SubProject_cost_sanctioned: @udp_jointly_funded1.SubProject_cost_sanctioned, Total_Expenditure_till_Nov_2017: @udp_jointly_funded1.Total_Expenditure_till_Nov_2017 } }
    assert_redirected_to udp_jointly_funded1_url(@udp_jointly_funded1)
  end

  test "should destroy udp_jointly_funded1" do
    assert_difference('UdpJointlyFunded1.count', -1) do
      delete udp_jointly_funded1_url(@udp_jointly_funded1)
    end

    assert_redirected_to udp_jointly_funded1s_url
  end
end
