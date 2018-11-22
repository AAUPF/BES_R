require 'test_helper'

class UdpJointlyFunded11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded11 = udp_jointly_funded11s(:one)
  end

  test "should get index" do
    get udp_jointly_funded11s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded11_url
    assert_response :success
  end

  test "should create udp_jointly_funded11" do
    assert_difference('UdpJointlyFunded11.count') do
      post udp_jointly_funded11s_url, params: { udp_jointly_funded11: { Amount: @udp_jointly_funded11.Amount, Description: @udp_jointly_funded11.Description, No_of_Projects: @udp_jointly_funded11.No_of_Projects, Remarks: @udp_jointly_funded11.Remarks } }
    end

    assert_redirected_to udp_jointly_funded11_url(UdpJointlyFunded11.last)
  end

  test "should show udp_jointly_funded11" do
    get udp_jointly_funded11_url(@udp_jointly_funded11)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded11_url(@udp_jointly_funded11)
    assert_response :success
  end

  test "should update udp_jointly_funded11" do
    patch udp_jointly_funded11_url(@udp_jointly_funded11), params: { udp_jointly_funded11: { Amount: @udp_jointly_funded11.Amount, Description: @udp_jointly_funded11.Description, No_of_Projects: @udp_jointly_funded11.No_of_Projects, Remarks: @udp_jointly_funded11.Remarks } }
    assert_redirected_to udp_jointly_funded11_url(@udp_jointly_funded11)
  end

  test "should destroy udp_jointly_funded11" do
    assert_difference('UdpJointlyFunded11.count', -1) do
      delete udp_jointly_funded11_url(@udp_jointly_funded11)
    end

    assert_redirected_to udp_jointly_funded11s_url
  end
end
