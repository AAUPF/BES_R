require 'test_helper'

class AgriculturalInputs4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs4 = agricultural_inputs4s(:one)
  end

  test "should get index" do
    get agricultural_inputs4s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs4_url
    assert_response :success
  end

  test "should create agricultural_inputs4" do
    assert_difference('AgriculturalInputs4.count') do
      post agricultural_inputs4s_url, params: { agricultural_inputs4: { Ammonium_Sulphate: @agricultural_inputs4.Ammonium_Sulphate, Ammonium_Sulphate_Colour: @agricultural_inputs4.Ammonium_Sulphate_Colour, Complex: @agricultural_inputs4.Complex, Complex_Colour: @agricultural_inputs4.Complex_Colour, DAP: @agricultural_inputs4.DAP, DAP_Colour: @agricultural_inputs4.DAP_Colour, Districts: @agricultural_inputs4.Districts, Grand_Total: @agricultural_inputs4.Grand_Total, Grand_Total_Colour: @agricultural_inputs4.Grand_Total_Colour, K: @agricultural_inputs4.K, K_Colour: @agricultural_inputs4.K_Colour, MOP: @agricultural_inputs4.MOP, MOP_Colour: @agricultural_inputs4.MOP_Colour, N: @agricultural_inputs4.N, N_Colour: @agricultural_inputs4.N_Colour, P: @agricultural_inputs4.P, P_Colour: @agricultural_inputs4.P_Colour, SSP: @agricultural_inputs4.SSP, SSP_Colour: @agricultural_inputs4.SSP_Colour, Total: @agricultural_inputs4.Total, Total_Colour: @agricultural_inputs4.Total_Colour, Total_NPK: @agricultural_inputs4.Total_NPK, Total_NPK_Colour: @agricultural_inputs4.Total_NPK_Colour, Urea: @agricultural_inputs4.Urea, Urea_Colour: @agricultural_inputs4.Urea_Colour, Year: @agricultural_inputs4.Year } }
    end

    assert_redirected_to agricultural_inputs4_url(AgriculturalInputs4.last)
  end

  test "should show agricultural_inputs4" do
    get agricultural_inputs4_url(@agricultural_inputs4)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs4_url(@agricultural_inputs4)
    assert_response :success
  end

  test "should update agricultural_inputs4" do
    patch agricultural_inputs4_url(@agricultural_inputs4), params: { agricultural_inputs4: { Ammonium_Sulphate: @agricultural_inputs4.Ammonium_Sulphate, Ammonium_Sulphate_Colour: @agricultural_inputs4.Ammonium_Sulphate_Colour, Complex: @agricultural_inputs4.Complex, Complex_Colour: @agricultural_inputs4.Complex_Colour, DAP: @agricultural_inputs4.DAP, DAP_Colour: @agricultural_inputs4.DAP_Colour, Districts: @agricultural_inputs4.Districts, Grand_Total: @agricultural_inputs4.Grand_Total, Grand_Total_Colour: @agricultural_inputs4.Grand_Total_Colour, K: @agricultural_inputs4.K, K_Colour: @agricultural_inputs4.K_Colour, MOP: @agricultural_inputs4.MOP, MOP_Colour: @agricultural_inputs4.MOP_Colour, N: @agricultural_inputs4.N, N_Colour: @agricultural_inputs4.N_Colour, P: @agricultural_inputs4.P, P_Colour: @agricultural_inputs4.P_Colour, SSP: @agricultural_inputs4.SSP, SSP_Colour: @agricultural_inputs4.SSP_Colour, Total: @agricultural_inputs4.Total, Total_Colour: @agricultural_inputs4.Total_Colour, Total_NPK: @agricultural_inputs4.Total_NPK, Total_NPK_Colour: @agricultural_inputs4.Total_NPK_Colour, Urea: @agricultural_inputs4.Urea, Urea_Colour: @agricultural_inputs4.Urea_Colour, Year: @agricultural_inputs4.Year } }
    assert_redirected_to agricultural_inputs4_url(@agricultural_inputs4)
  end

  test "should destroy agricultural_inputs4" do
    assert_difference('AgriculturalInputs4.count', -1) do
      delete agricultural_inputs4_url(@agricultural_inputs4)
    end

    assert_redirected_to agricultural_inputs4s_url
  end
end
