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
      post agricultural_inputs7s_url, params: { agricultural_inputs7: { Combine_Harvestor: @agricultural_inputs7.Combine_Harvestor, Combine_Harvestor_Colour: @agricultural_inputs7.Combine_Harvestor_Colour, Districts: @agricultural_inputs7.Districts, Manually_Operated_Tools: @agricultural_inputs7.Manually_Operated_Tools, Manually_Operated_Tools_Colour: @agricultural_inputs7.Manually_Operated_Tools_Colour, Power_Tiller: @agricultural_inputs7.Power_Tiller, Power_Tiller_Colour: @agricultural_inputs7.Power_Tiller_Colour, Pumpset: @agricultural_inputs7.Pumpset, Pumpset_Colour: @agricultural_inputs7.Pumpset_Colour, Thresher: @agricultural_inputs7.Thresher, Thresher_Colour: @agricultural_inputs7.Thresher_Colour, Tractor: @agricultural_inputs7.Tractor, Tractor_Colour: @agricultural_inputs7.Tractor_Colour, Year: @agricultural_inputs7.Year, Zero_Tillage: @agricultural_inputs7.Zero_Tillage, Zero_Tillage_Colour: @agricultural_inputs7.Zero_Tillage_Colour } }
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
    patch agricultural_inputs7_url(@agricultural_inputs7), params: { agricultural_inputs7: { Combine_Harvestor: @agricultural_inputs7.Combine_Harvestor, Combine_Harvestor_Colour: @agricultural_inputs7.Combine_Harvestor_Colour, Districts: @agricultural_inputs7.Districts, Manually_Operated_Tools: @agricultural_inputs7.Manually_Operated_Tools, Manually_Operated_Tools_Colour: @agricultural_inputs7.Manually_Operated_Tools_Colour, Power_Tiller: @agricultural_inputs7.Power_Tiller, Power_Tiller_Colour: @agricultural_inputs7.Power_Tiller_Colour, Pumpset: @agricultural_inputs7.Pumpset, Pumpset_Colour: @agricultural_inputs7.Pumpset_Colour, Thresher: @agricultural_inputs7.Thresher, Thresher_Colour: @agricultural_inputs7.Thresher_Colour, Tractor: @agricultural_inputs7.Tractor, Tractor_Colour: @agricultural_inputs7.Tractor_Colour, Year: @agricultural_inputs7.Year, Zero_Tillage: @agricultural_inputs7.Zero_Tillage, Zero_Tillage_Colour: @agricultural_inputs7.Zero_Tillage_Colour } }
    assert_redirected_to agricultural_inputs7_url(@agricultural_inputs7)
  end

  test "should destroy agricultural_inputs7" do
    assert_difference('AgriculturalInputs7.count', -1) do
      delete agricultural_inputs7_url(@agricultural_inputs7)
    end

    assert_redirected_to agricultural_inputs7s_url
  end
end
