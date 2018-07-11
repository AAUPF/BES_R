require 'test_helper'

class AgriculturalInputs7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs7 = agricultural_inputs7s(:one)
  end

  test "should get index" do
    get agricultural_inputs7s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs7_url
    assert_response :success
  end

  test "should create agricultural_inputs7" do
    assert_difference('AgriculturalInputs7.count') do
      post agricultural_inputs7s_url, params: { agricultural_inputs7: { Combine_Harvestor: @agricultural_inputs7.Combine_Harvestor, Districts: @agricultural_inputs7.Districts, Manually_Operated_Tools: @agricultural_inputs7.Manually_Operated_Tools, Power_Tiller: @agricultural_inputs7.Power_Tiller, Pumpset: @agricultural_inputs7.Pumpset, Thresher: @agricultural_inputs7.Thresher, Tractor: @agricultural_inputs7.Tractor, Urea: @agricultural_inputs7.Urea, Year: @agricultural_inputs7.Year, Zero_Tillage: @agricultural_inputs7.Zero_Tillage } }
    end

    assert_redirected_to agricultural_inputs7_url(AgriculturalInputs7.last)
  end

  test "should show agricultural_inputs7" do
    get agricultural_inputs7_url(@agricultural_inputs7)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs7_url(@agricultural_inputs7)
    assert_response :success
  end

  test "should update agricultural_inputs7" do
    patch agricultural_inputs7_url(@agricultural_inputs7), params: { agricultural_inputs7: { Combine_Harvestor: @agricultural_inputs7.Combine_Harvestor, Districts: @agricultural_inputs7.Districts, Manually_Operated_Tools: @agricultural_inputs7.Manually_Operated_Tools, Power_Tiller: @agricultural_inputs7.Power_Tiller, Pumpset: @agricultural_inputs7.Pumpset, Thresher: @agricultural_inputs7.Thresher, Tractor: @agricultural_inputs7.Tractor, Urea: @agricultural_inputs7.Urea, Year: @agricultural_inputs7.Year, Zero_Tillage: @agricultural_inputs7.Zero_Tillage } }
    assert_redirected_to agricultural_inputs7_url(@agricultural_inputs7)
  end

  test "should destroy agricultural_inputs7" do
    assert_difference('AgriculturalInputs7.count', -1) do
      delete agricultural_inputs7_url(@agricultural_inputs7)
    end

    assert_redirected_to agricultural_inputs7s_url
  end
end
