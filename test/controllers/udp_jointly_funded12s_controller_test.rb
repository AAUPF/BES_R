require 'test_helper'

class UdpJointlyFunded12sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @udp_jointly_funded12 = udp_jointly_funded12s(:one)
  end

  test "should get index" do
    get udp_jointly_funded12s_url
    assert_response :success
  end

  test "should get new" do
    get new_udp_jointly_funded12_url
    assert_response :success
  end

  test "should create udp_jointly_funded12" do
    assert_difference('UdpJointlyFunded12.count') do
      post udp_jointly_funded12s_url, params: { udp_jointly_funded12: { Activities: @udp_jointly_funded12.Activities, Amount_released: @udp_jointly_funded12.Amount_released, Approved_Project_Cost: @udp_jointly_funded12.Approved_Project_Cost, Name_of_the_Project: @udp_jointly_funded12.Name_of_the_Project, Status: @udp_jointly_funded12.Status } }
    end

    assert_redirected_to udp_jointly_funded12_url(UdpJointlyFunded12.last)
  end

  test "should show udp_jointly_funded12" do
    get udp_jointly_funded12_url(@udp_jointly_funded12)
    assert_response :success
  end

  test "should get edit" do
    get edit_udp_jointly_funded12_url(@udp_jointly_funded12)
    assert_response :success
  end

  test "should update udp_jointly_funded12" do
    patch udp_jointly_funded12_url(@udp_jointly_funded12), params: { udp_jointly_funded12: { Activities: @udp_jointly_funded12.Activities, Amount_released: @udp_jointly_funded12.Amount_released, Approved_Project_Cost: @udp_jointly_funded12.Approved_Project_Cost, Name_of_the_Project: @udp_jointly_funded12.Name_of_the_Project, Status: @udp_jointly_funded12.Status } }
    assert_redirected_to udp_jointly_funded12_url(@udp_jointly_funded12)
  end

  test "should destroy udp_jointly_funded12" do
    assert_difference('UdpJointlyFunded12.count', -1) do
      delete udp_jointly_funded12_url(@udp_jointly_funded12)
    end

    assert_redirected_to udp_jointly_funded12s_url
  end
end
