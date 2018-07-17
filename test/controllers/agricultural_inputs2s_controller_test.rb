require 'test_helper'

class AgriculturalInputs2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs2 = agricultural_inputs2s(:one)
  end

  test "should get index" do
    get agricultural_inputs2s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs2_url
    assert_response :success
  end

  test "should create agricultural_inputs2" do
    assert_difference('AgriculturalInputs2.count') do
      post agricultural_inputs2s_url, params: { agricultural_inputs2: { Ammonium_Sulphate: @agricultural_inputs2.Ammonium_Sulphate, Complex: @agricultural_inputs2.Complex, Consumption_of_Fertilizer: @agricultural_inputs2.Consumption_of_Fertilizer, DAP: @agricultural_inputs2.DAP, Grand_Total: @agricultural_inputs2.Grand_Total, K: @agricultural_inputs2.K, MOP: @agricultural_inputs2.MOP, N: @agricultural_inputs2.N, P: @agricultural_inputs2.P, SSP: @agricultural_inputs2.SSP, Sub_Total: @agricultural_inputs2.Sub_Total, Total_NPK: @agricultural_inputs2.Total_NPK, Type_of_Fertilizer: @agricultural_inputs2.Type_of_Fertilizer, Urea: @agricultural_inputs2.Urea, Year: @agricultural_inputs2.Year } }
    end

    assert_redirected_to agricultural_inputs2_url(AgriculturalInputs2.last)
  end

  test "should show agricultural_inputs2" do
    get agricultural_inputs2_url(@agricultural_inputs2)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs2_url(@agricultural_inputs2)
    assert_response :success
  end

  test "should update agricultural_inputs2" do
    patch agricultural_inputs2_url(@agricultural_inputs2), params: { agricultural_inputs2: { Ammonium_Sulphate: @agricultural_inputs2.Ammonium_Sulphate, Complex: @agricultural_inputs2.Complex, Consumption_of_Fertilizer: @agricultural_inputs2.Consumption_of_Fertilizer, DAP: @agricultural_inputs2.DAP, Grand_Total: @agricultural_inputs2.Grand_Total, K: @agricultural_inputs2.K, MOP: @agricultural_inputs2.MOP, N: @agricultural_inputs2.N, P: @agricultural_inputs2.P, SSP: @agricultural_inputs2.SSP, Sub_Total: @agricultural_inputs2.Sub_Total, Total_NPK: @agricultural_inputs2.Total_NPK, Type_of_Fertilizer: @agricultural_inputs2.Type_of_Fertilizer, Urea: @agricultural_inputs2.Urea, Year: @agricultural_inputs2.Year } }
    assert_redirected_to agricultural_inputs2_url(@agricultural_inputs2)
  end

  test "should destroy agricultural_inputs2" do
    assert_difference('AgriculturalInputs2.count', -1) do
      delete agricultural_inputs2_url(@agricultural_inputs2)
    end

    assert_redirected_to agricultural_inputs2s_url
  end
end
