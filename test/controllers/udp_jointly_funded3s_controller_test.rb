require 'test_helper'

class UdpJointlyFunded3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded3 = udp_jointly_funded3s(:one)
  end

  test "should get index" do
    get udp_jointly_funded3s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded3_url
    assert_response :success
  end

  test "should create udp_jointly_funded3" do
    assert_difference('UdpJointlyFunded3.count') do
      post udp_jointly_funded3s_url, params: { udp_jointly_funded3: { Annual_Target: @udp_jointly_funded3.Annual_Target, Category: @udp_jointly_funded3.Category, Number_of_Persons_Completed_Training: @udp_jointly_funded3.Number_of_Persons_Completed_Training, Number_of_Persons_Undergoing_Training: @udp_jointly_funded3.Number_of_Persons_Undergoing_Training } }
    end

    assert_redirected_to udp_jointly_funded3_url(UdpJointlyFunded3.last)
  end

  test "should show udp_jointly_funded3" do
    get udp_jointly_funded3_url(@udp_jointly_funded3)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded3_url(@udp_jointly_funded3)
    assert_response :success
  end

  test "should update udp_jointly_funded3" do
    patch udp_jointly_funded3_url(@udp_jointly_funded3), params: { udp_jointly_funded3: { Annual_Target: @udp_jointly_funded3.Annual_Target, Category: @udp_jointly_funded3.Category, Number_of_Persons_Completed_Training: @udp_jointly_funded3.Number_of_Persons_Completed_Training, Number_of_Persons_Undergoing_Training: @udp_jointly_funded3.Number_of_Persons_Undergoing_Training } }
    assert_redirected_to udp_jointly_funded3_url(@udp_jointly_funded3)
  end

  test "should destroy udp_jointly_funded3" do
    assert_difference('UdpJointlyFunded3.count', -1) do
      delete udp_jointly_funded3_url(@udp_jointly_funded3)
    end

    assert_redirected_to udp_jointly_funded3s_url
  end
end
