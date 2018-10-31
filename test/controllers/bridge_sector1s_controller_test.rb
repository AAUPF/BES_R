require 'test_helper'

class BridgeSector1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bridge_sector1 = bridge_sector1s(:one)
  end

  test "should get index" do
    get bridge_sector1s_url
    assert_response :success
  end

  test "should get new" do
    get new_bridge_sector1_url
    assert_response :success
  end

  test "should create bridge_sector1" do
    assert_difference('BridgeSector1.count') do
      post bridge_sector1s_url, params: { bridge_sector1: { Cost: @bridge_sector1.Cost, Division: @bridge_sector1.Division, Number_of_Projects: @bridge_sector1.Number_of_Projects } }
    end

    assert_redirected_to bridge_sector1_url(BridgeSector1.last)
  end

  test "should show bridge_sector1" do
    get bridge_sector1_url(@bridge_sector1)
    assert_response :success
  end

  test "should get edit" do
    get edit_bridge_sector1_url(@bridge_sector1)
    assert_response :success
  end

  test "should update bridge_sector1" do
    patch bridge_sector1_url(@bridge_sector1), params: { bridge_sector1: { Cost: @bridge_sector1.Cost, Division: @bridge_sector1.Division, Number_of_Projects: @bridge_sector1.Number_of_Projects } }
    assert_redirected_to bridge_sector1_url(@bridge_sector1)
  end

  test "should destroy bridge_sector1" do
    assert_difference('BridgeSector1.count', -1) do
      delete bridge_sector1_url(@bridge_sector1)
    end

    assert_redirected_to bridge_sector1s_url
  end
end
