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
      post agricultural_inputs4s_url, params: { agricultural_inputs4: { Ammonium_Sulphate: @agricultural_inputs4.Ammonium_Sulphate, Complex: @agricultural_inputs4.Complex, DAP: @agricultural_inputs4.DAP, Districts: @agricultural_inputs4.Districts, Grand_Total: @agricultural_inputs4.Grand_Total, K: @agricultural_inputs4.K, MOP: @agricultural_inputs4.MOP, N: @agricultural_inputs4.N, P: @agricultural_inputs4.P, SSP: @agricultural_inputs4.SSP, Total: @agricultural_inputs4.Total, Total_NPK: @agricultural_inputs4.Total_NPK, Urea: @agricultural_inputs4.Urea, Year: @agricultural_inputs4.Year } }
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
    patch agricultural_inputs4_url(@agricultural_inputs4), params: { agricultural_inputs4: { Ammonium_Sulphate: @agricultural_inputs4.Ammonium_Sulphate, Complex: @agricultural_inputs4.Complex, DAP: @agricultural_inputs4.DAP, Districts: @agricultural_inputs4.Districts, Grand_Total: @agricultural_inputs4.Grand_Total, K: @agricultural_inputs4.K, MOP: @agricultural_inputs4.MOP, N: @agricultural_inputs4.N, P: @agricultural_inputs4.P, SSP: @agricultural_inputs4.SSP, Total: @agricultural_inputs4.Total, Total_NPK: @agricultural_inputs4.Total_NPK, Urea: @agricultural_inputs4.Urea, Year: @agricultural_inputs4.Year } }
    assert_redirected_to agricultural_inputs4_url(@agricultural_inputs4)
  end

  test "should destroy agricultural_inputs4" do
    assert_difference('AgriculturalInputs4.count', -1) do
      delete agricultural_inputs4_url(@agricultural_inputs4)
    end

    assert_redirected_to agricultural_inputs4s_url
  end
end
