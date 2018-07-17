require 'test_helper'

class AgriculturalInputs3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs3 = agricultural_inputs3s(:one)
  end

  test "should get index" do
    get agricultural_inputs3s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs3_url
    assert_response :success
  end

  test "should create agricultural_inputs3" do
    assert_difference('AgriculturalInputs3.count') do
      post agricultural_inputs3s_url, params: { agricultural_inputs3: { Combine_Harvestors: @agricultural_inputs3.Combine_Harvestors, Manually_operated_tools_implements: @agricultural_inputs3.Manually_operated_tools_implements, Power_Tiller: @agricultural_inputs3.Power_Tiller, Pumpsets: @agricultural_inputs3.Pumpsets, Threshers: @agricultural_inputs3.Threshers, Total: @agricultural_inputs3.Total, Tractor: @agricultural_inputs3.Tractor, Year: @agricultural_inputs3.Year, Zero_Tillage: @agricultural_inputs3.Zero_Tillage } }
    end

    assert_redirected_to agricultural_inputs3_url(AgriculturalInputs3.last)
  end

  test "should show agricultural_inputs3" do
    get agricultural_inputs3_url(@agricultural_inputs3)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs3_url(@agricultural_inputs3)
    assert_response :success
  end

  test "should update agricultural_inputs3" do
    patch agricultural_inputs3_url(@agricultural_inputs3), params: { agricultural_inputs3: { Combine_Harvestors: @agricultural_inputs3.Combine_Harvestors, Manually_operated_tools_implements: @agricultural_inputs3.Manually_operated_tools_implements, Power_Tiller: @agricultural_inputs3.Power_Tiller, Pumpsets: @agricultural_inputs3.Pumpsets, Threshers: @agricultural_inputs3.Threshers, Total: @agricultural_inputs3.Total, Tractor: @agricultural_inputs3.Tractor, Year: @agricultural_inputs3.Year, Zero_Tillage: @agricultural_inputs3.Zero_Tillage } }
    assert_redirected_to agricultural_inputs3_url(@agricultural_inputs3)
  end

  test "should destroy agricultural_inputs3" do
    assert_difference('AgriculturalInputs3.count', -1) do
      delete agricultural_inputs3_url(@agricultural_inputs3)
    end

    assert_redirected_to agricultural_inputs3s_url
  end
end
