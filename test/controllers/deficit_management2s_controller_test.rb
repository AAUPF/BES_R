require 'test_helper'

class DeficitManagement2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deficit_management2 = deficit_management2s(:one)
  end

  test "should get index" do
    get deficit_management2s_url
    assert_response :success
  end

  test "should get new" do
    get new_deficit_management2_url
    assert_response :success
  end

  test "should create deficit_management2" do
    assert_difference('DeficitManagement2.count') do
      post deficit_management2s_url, params: { deficit_management2: { Gross_Fiscal_Deficit: @deficit_management2.Gross_Fiscal_Deficit, State: @deficit_management2.State, Year: @deficit_management2.Year } }
    end

    assert_redirected_to deficit_management2_url(DeficitManagement2.last)
  end

  test "should show deficit_management2" do
    get deficit_management2_url(@deficit_management2)
    assert_response :success
  end

  test "should get edit" do
    get edit_deficit_management2_url(@deficit_management2)
    assert_response :success
  end

  test "should update deficit_management2" do
    patch deficit_management2_url(@deficit_management2), params: { deficit_management2: { Gross_Fiscal_Deficit: @deficit_management2.Gross_Fiscal_Deficit, State: @deficit_management2.State, Year: @deficit_management2.Year } }
    assert_redirected_to deficit_management2_url(@deficit_management2)
  end

  test "should destroy deficit_management2" do
    assert_difference('DeficitManagement2.count', -1) do
      delete deficit_management2_url(@deficit_management2)
    end

    assert_redirected_to deficit_management2s_url
  end
end
