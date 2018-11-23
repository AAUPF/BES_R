require 'test_helper'

class UdpJointlyFunded8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded8 = udp_jointly_funded8s(:one)
  end

  test "should get index" do
    get udp_jointly_funded8s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded8_url
    assert_response :success
  end

  test "should create udp_jointly_funded8" do
    assert_difference('UdpJointlyFunded8.count') do
      post udp_jointly_funded8s_url, params: { udp_jointly_funded8: { Constructed: @udp_jointly_funded8.Constructed, Particulars: @udp_jointly_funded8.Particulars, Under_Construction: @udp_jointly_funded8.Under_Construction } }
    end

    assert_redirected_to udp_jointly_funded8_url(UdpJointlyFunded8.last)
  end

  test "should show udp_jointly_funded8" do
    get udp_jointly_funded8_url(@udp_jointly_funded8)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded8_url(@udp_jointly_funded8)
    assert_response :success
  end

  test "should update udp_jointly_funded8" do
    patch udp_jointly_funded8_url(@udp_jointly_funded8), params: { udp_jointly_funded8: { Constructed: @udp_jointly_funded8.Constructed, Particulars: @udp_jointly_funded8.Particulars, Under_Construction: @udp_jointly_funded8.Under_Construction } }
    assert_redirected_to udp_jointly_funded8_url(@udp_jointly_funded8)
  end

  test "should destroy udp_jointly_funded8" do
    assert_difference('UdpJointlyFunded8.count', -1) do
      delete udp_jointly_funded8_url(@udp_jointly_funded8)
    end

    assert_redirected_to udp_jointly_funded8s_url
  end
end
