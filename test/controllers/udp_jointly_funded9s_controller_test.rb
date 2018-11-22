require 'test_helper'

class UdpJointlyFunded9sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded9 = udp_jointly_funded9s(:one)
  end

  test "should get index" do
    get udp_jointly_funded9s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded9_url
    assert_response :success
  end

  test "should create udp_jointly_funded9" do
    assert_difference('UdpJointlyFunded9.count') do
      post udp_jointly_funded9s_url, params: { udp_jointly_funded9: { Indicators: @udp_jointly_funded9.Indicators, Number_Amount: @udp_jointly_funded9.Number_Amount } }
    end

    assert_redirected_to udp_jointly_funded9_url(UdpJointlyFunded9.last)
  end

  test "should show udp_jointly_funded9" do
    get udp_jointly_funded9_url(@udp_jointly_funded9)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded9_url(@udp_jointly_funded9)
    assert_response :success
  end

  test "should update udp_jointly_funded9" do
    patch udp_jointly_funded9_url(@udp_jointly_funded9), params: { udp_jointly_funded9: { Indicators: @udp_jointly_funded9.Indicators, Number_Amount: @udp_jointly_funded9.Number_Amount } }
    assert_redirected_to udp_jointly_funded9_url(@udp_jointly_funded9)
  end

  test "should destroy udp_jointly_funded9" do
    assert_difference('UdpJointlyFunded9.count', -1) do
      delete udp_jointly_funded9_url(@udp_jointly_funded9)
    end

    assert_redirected_to udp_jointly_funded9s_url
  end
end
