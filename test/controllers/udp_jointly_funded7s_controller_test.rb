require 'test_helper'

class UdpJointlyFunded7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded7 = udp_jointly_funded7s(:one)
  end

  test "should get index" do
    get udp_jointly_funded7s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded7_url
    assert_response :success
  end

  test "should create udp_jointly_funded7" do
    assert_difference('UdpJointlyFunded7.count') do
      post udp_jointly_funded7s_url, params: { udp_jointly_funded7: { Already_constructed_refurbished_and_under_process: @udp_jointly_funded7.Already_constructed_refurbished_and_under_process, Operational: @udp_jointly_funded7.Operational, Shelters_Sanctioned_Planned: @udp_jointly_funded7.Shelters_Sanctioned_Planned, Under_process_of_construction_refurbishment: @udp_jointly_funded7.Under_process_of_construction_refurbishment } }
    end

    assert_redirected_to udp_jointly_funded7_url(UdpJointlyFunded7.last)
  end

  test "should show udp_jointly_funded7" do
    get udp_jointly_funded7_url(@udp_jointly_funded7)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded7_url(@udp_jointly_funded7)
    assert_response :success
  end

  test "should update udp_jointly_funded7" do
    patch udp_jointly_funded7_url(@udp_jointly_funded7), params: { udp_jointly_funded7: { Already_constructed_refurbished_and_under_process: @udp_jointly_funded7.Already_constructed_refurbished_and_under_process, Operational: @udp_jointly_funded7.Operational, Shelters_Sanctioned_Planned: @udp_jointly_funded7.Shelters_Sanctioned_Planned, Under_process_of_construction_refurbishment: @udp_jointly_funded7.Under_process_of_construction_refurbishment } }
    assert_redirected_to udp_jointly_funded7_url(@udp_jointly_funded7)
  end

  test "should destroy udp_jointly_funded7" do
    assert_difference('UdpJointlyFunded7.count', -1) do
      delete udp_jointly_funded7_url(@udp_jointly_funded7)
    end

    assert_redirected_to udp_jointly_funded7s_url
  end
end
