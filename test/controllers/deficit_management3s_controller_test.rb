require 'test_helper'

class DeficitManagement3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deficit_management3 = deficit_management3s(:one)
  end

  test "should get index" do
    get deficit_management3s_url
    assert_response :success
  end

  test "should get new" do
    get new_deficit_management3_url
    assert_response :success
  end

  test "should create deficit_management3" do
    assert_difference('DeficitManagement3.count') do
      post deficit_management3s_url, params: { deficit_management3: { Amount: @deficit_management3.Amount, Gross_Fiscal_Deficit: @deficit_management3.Gross_Fiscal_Deficit, Year: @deficit_management3.Year } }
    end

    assert_redirected_to deficit_management3_url(DeficitManagement3.last)
  end

  test "should show deficit_management3" do
    get deficit_management3_url(@deficit_management3)
    assert_response :success
  end

  test "should get edit" do
    get edit_deficit_management3_url(@deficit_management3)
    assert_response :success
  end

  test "should update deficit_management3" do
    patch deficit_management3_url(@deficit_management3), params: { deficit_management3: { Amount: @deficit_management3.Amount, Gross_Fiscal_Deficit: @deficit_management3.Gross_Fiscal_Deficit, Year: @deficit_management3.Year } }
    assert_redirected_to deficit_management3_url(@deficit_management3)
  end

  test "should destroy deficit_management3" do
    assert_difference('DeficitManagement3.count', -1) do
      delete deficit_management3_url(@deficit_management3)
    end

    assert_redirected_to deficit_management3s_url
  end
end
