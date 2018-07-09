require 'test_helper'

class AgriculturalInputs5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_inputs5 = agricultural_inputs5s(:one)
  end

  test "should get index" do
    get agricultural_inputs5s_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_inputs5_url
    assert_response :success
  end

  test "should create agricultural_inputs5" do
    assert_difference('AgriculturalInputs5.count') do
      post agricultural_inputs5s_url, params: { agricultural_inputs5: { Ammonium_Sulphate: @agricultural_inputs5.Ammonium_Sulphate, Complex: @agricultural_inputs5.Complex, DAP: @agricultural_inputs5.DAP, Districts: @agricultural_inputs5.Districts, Grand_Total: @agricultural_inputs5.Grand_Total, K: @agricultural_inputs5.K, MOP: @agricultural_inputs5.MOP, N: @agricultural_inputs5.N, P: @agricultural_inputs5.P, SSP: @agricultural_inputs5.SSP, Total: @agricultural_inputs5.Total, Total_NPK: @agricultural_inputs5.Total_NPK, Urea: @agricultural_inputs5.Urea } }
    end

    assert_redirected_to agricultural_inputs5_url(AgriculturalInputs5.last)
  end

  test "should show agricultural_inputs5" do
    get agricultural_inputs5_url(@agricultural_inputs5)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_inputs5_url(@agricultural_inputs5)
    assert_response :success
  end

  test "should update agricultural_inputs5" do
    patch agricultural_inputs5_url(@agricultural_inputs5), params: { agricultural_inputs5: { Ammonium_Sulphate: @agricultural_inputs5.Ammonium_Sulphate, Complex: @agricultural_inputs5.Complex, DAP: @agricultural_inputs5.DAP, Districts: @agricultural_inputs5.Districts, Grand_Total: @agricultural_inputs5.Grand_Total, K: @agricultural_inputs5.K, MOP: @agricultural_inputs5.MOP, N: @agricultural_inputs5.N, P: @agricultural_inputs5.P, SSP: @agricultural_inputs5.SSP, Total: @agricultural_inputs5.Total, Total_NPK: @agricultural_inputs5.Total_NPK, Urea: @agricultural_inputs5.Urea } }
    assert_redirected_to agricultural_inputs5_url(@agricultural_inputs5)
  end

  test "should destroy agricultural_inputs5" do
    assert_difference('AgriculturalInputs5.count', -1) do
      delete agricultural_inputs5_url(@agricultural_inputs5)
    end

    assert_redirected_to agricultural_inputs5s_url
  end
end
