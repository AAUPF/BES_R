require 'test_helper'

class UdpJointlyFunded6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded6 = udp_jointly_funded6s(:one)
  end

  test "should get index" do
    get udp_jointly_funded6s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded6_url
    assert_response :success
  end

  test "should create udp_jointly_funded6" do
    assert_difference('UdpJointlyFunded6.count') do
      post udp_jointly_funded6s_url, params: { udp_jointly_funded6: { DAY_NULM: @udp_jointly_funded6.DAY_NULM, State_Plan_Head_Nagrik_Suvidha: @udp_jointly_funded6.State_Plan_Head_Nagrik_Suvidha, Total: @udp_jointly_funded6.Total, Year: @udp_jointly_funded6.Year } }
    end

    assert_redirected_to udp_jointly_funded6_url(UdpJointlyFunded6.last)
  end

  test "should show udp_jointly_funded6" do
    get udp_jointly_funded6_url(@udp_jointly_funded6)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded6_url(@udp_jointly_funded6)
    assert_response :success
  end

  test "should update udp_jointly_funded6" do
    patch udp_jointly_funded6_url(@udp_jointly_funded6), params: { udp_jointly_funded6: { DAY_NULM: @udp_jointly_funded6.DAY_NULM, State_Plan_Head_Nagrik_Suvidha: @udp_jointly_funded6.State_Plan_Head_Nagrik_Suvidha, Total: @udp_jointly_funded6.Total, Year: @udp_jointly_funded6.Year } }
    assert_redirected_to udp_jointly_funded6_url(@udp_jointly_funded6)
  end

  test "should destroy udp_jointly_funded6" do
    assert_difference('UdpJointlyFunded6.count', -1) do
      delete udp_jointly_funded6_url(@udp_jointly_funded6)
    end

    assert_redirected_to udp_jointly_funded6s_url
  end
end
