require 'test_helper'

class AgriculturalInputs8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs8 = agricultural_inputs8s(:one)
  end

  test "should get index" do
    get agricultural_inputs8s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs8_url
    assert_response :success
  end

  test "should create agricultural_inputs8" do
    assert_difference('AgriculturalInputs8.count') do
      post agricultural_inputs8s_url, params: { agricultural_inputs8: { Combine_Harvestor: @agricultural_inputs8.Combine_Harvestor, Districts: @agricultural_inputs8.Districts, Manually_Operated_Tools: @agricultural_inputs8.Manually_Operated_Tools, Power_Tiller: @agricultural_inputs8.Power_Tiller, Pumpset: @agricultural_inputs8.Pumpset, Thresher: @agricultural_inputs8.Thresher, Tractor: @agricultural_inputs8.Tractor, Zero_Tillage: @agricultural_inputs8.Zero_Tillage } }
    end

    assert_redirected_to agricultural_inputs8_url(AgriculturalInputs8.last)
  end

  test "should show agricultural_inputs8" do
    get agricultural_inputs8_url(@agricultural_inputs8)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs8_url(@agricultural_inputs8)
    assert_response :success
  end

  test "should update agricultural_inputs8" do
    patch agricultural_inputs8_url(@agricultural_inputs8), params: { agricultural_inputs8: { Combine_Harvestor: @agricultural_inputs8.Combine_Harvestor, Districts: @agricultural_inputs8.Districts, Manually_Operated_Tools: @agricultural_inputs8.Manually_Operated_Tools, Power_Tiller: @agricultural_inputs8.Power_Tiller, Pumpset: @agricultural_inputs8.Pumpset, Thresher: @agricultural_inputs8.Thresher, Tractor: @agricultural_inputs8.Tractor, Zero_Tillage: @agricultural_inputs8.Zero_Tillage } }
    assert_redirected_to agricultural_inputs8_url(@agricultural_inputs8)
  end

  test "should destroy agricultural_inputs8" do
    assert_difference('AgriculturalInputs8.count', -1) do
      delete agricultural_inputs8_url(@agricultural_inputs8)
    end

    assert_redirected_to agricultural_inputs8s_url
  end
end
