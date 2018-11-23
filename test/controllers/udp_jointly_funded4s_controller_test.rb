require 'test_helper'

class UdpJointlyFunded4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded4 = udp_jointly_funded4s(:one)
  end

  test "should get index" do
    get udp_jointly_funded4s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded4_url
    assert_response :success
  end

  test "should create udp_jointly_funded4" do
    assert_difference('UdpJointlyFunded4.count') do
      post udp_jointly_funded4s_url, params: { udp_jointly_funded4: { Achievement: @udp_jointly_funded4.Achievement, Annual_Target: @udp_jointly_funded4.Annual_Target, Program_Monitoring_Parameter: @udp_jointly_funded4.Program_Monitoring_Parameter } }
    end

    assert_redirected_to udp_jointly_funded4_url(UdpJointlyFunded4.last)
  end

  test "should show udp_jointly_funded4" do
    get udp_jointly_funded4_url(@udp_jointly_funded4)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded4_url(@udp_jointly_funded4)
    assert_response :success
  end

  test "should update udp_jointly_funded4" do
    patch udp_jointly_funded4_url(@udp_jointly_funded4), params: { udp_jointly_funded4: { Achievement: @udp_jointly_funded4.Achievement, Annual_Target: @udp_jointly_funded4.Annual_Target, Program_Monitoring_Parameter: @udp_jointly_funded4.Program_Monitoring_Parameter } }
    assert_redirected_to udp_jointly_funded4_url(@udp_jointly_funded4)
  end

  test "should destroy udp_jointly_funded4" do
    assert_difference('UdpJointlyFunded4.count', -1) do
      delete udp_jointly_funded4_url(@udp_jointly_funded4)
    end

    assert_redirected_to udp_jointly_funded4s_url
  end
end
