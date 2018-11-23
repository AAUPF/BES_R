require 'test_helper'

class UdpJointlyFunded2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded2 = udp_jointly_funded2s(:one)
  end

  test "should get index" do
    get udp_jointly_funded2s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded2_url
    assert_response :success
  end

  test "should create udp_jointly_funded2" do
    assert_difference('UdpJointlyFunded2.count') do
      post udp_jointly_funded2s_url, params: { udp_jointly_funded2: { Achievement: @udp_jointly_funded2.Achievement, Annual_Target: @udp_jointly_funded2.Annual_Target, Program_Monitoring_Parameter: @udp_jointly_funded2.Program_Monitoring_Parameter } }
    end

    assert_redirected_to udp_jointly_funded2_url(UdpJointlyFunded2.last)
  end

  test "should show udp_jointly_funded2" do
    get udp_jointly_funded2_url(@udp_jointly_funded2)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded2_url(@udp_jointly_funded2)
    assert_response :success
  end

  test "should update udp_jointly_funded2" do
    patch udp_jointly_funded2_url(@udp_jointly_funded2), params: { udp_jointly_funded2: { Achievement: @udp_jointly_funded2.Achievement, Annual_Target: @udp_jointly_funded2.Annual_Target, Program_Monitoring_Parameter: @udp_jointly_funded2.Program_Monitoring_Parameter } }
    assert_redirected_to udp_jointly_funded2_url(@udp_jointly_funded2)
  end

  test "should destroy udp_jointly_funded2" do
    assert_difference('UdpJointlyFunded2.count', -1) do
      delete udp_jointly_funded2_url(@udp_jointly_funded2)
    end

    assert_redirected_to udp_jointly_funded2s_url
  end
end
