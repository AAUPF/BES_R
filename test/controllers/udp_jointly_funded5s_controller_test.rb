require 'test_helper'

class UdpJointlyFunded5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded5 = udp_jointly_funded5s(:one)
  end

  test "should get index" do
    get udp_jointly_funded5s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded5_url
    assert_response :success
  end

  test "should create udp_jointly_funded5" do
    assert_difference('UdpJointlyFunded5.count') do
      post udp_jointly_funded5s_url, params: { udp_jointly_funded5: { Annual_Target: @udp_jointly_funded5.Annual_Target, Indicator: @udp_jointly_funded5.Indicator, Program_or_Monitoring_Parameter: @udp_jointly_funded5.Program_or_Monitoring_Parameter, Progress: @udp_jointly_funded5.Progress } }
    end

    assert_redirected_to udp_jointly_funded5_url(UdpJointlyFunded5.last)
  end

  test "should show udp_jointly_funded5" do
    get udp_jointly_funded5_url(@udp_jointly_funded5)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded5_url(@udp_jointly_funded5)
    assert_response :success
  end

  test "should update udp_jointly_funded5" do
    patch udp_jointly_funded5_url(@udp_jointly_funded5), params: { udp_jointly_funded5: { Annual_Target: @udp_jointly_funded5.Annual_Target, Indicator: @udp_jointly_funded5.Indicator, Program_or_Monitoring_Parameter: @udp_jointly_funded5.Program_or_Monitoring_Parameter, Progress: @udp_jointly_funded5.Progress } }
    assert_redirected_to udp_jointly_funded5_url(@udp_jointly_funded5)
  end

  test "should destroy udp_jointly_funded5" do
    assert_difference('UdpJointlyFunded5.count', -1) do
      delete udp_jointly_funded5_url(@udp_jointly_funded5)
    end

    assert_redirected_to udp_jointly_funded5s_url
  end
end
