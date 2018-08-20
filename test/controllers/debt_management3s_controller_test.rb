require 'test_helper'

class DebtManagement3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt_management3 = debt_management3s(:one)
  end

  test "should get index" do
    get debt_management3s_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_management3_url
    assert_response :success
  end

  test "should create debt_management3" do
    assert_difference('DebtManagement3.count') do
      post debt_management3s_url, params: { debt_management3: { Amounts: @debt_management3.Amounts, Public_Debt_Repayment_Liabilities: @debt_management3.Public_Debt_Repayment_Liabilities, Year: @debt_management3.Year } }
    end

    assert_redirected_to debt_management3_url(DebtManagement3.last)
  end

  test "should show debt_management3" do
    get debt_management3_url(@debt_management3)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_management3_url(@debt_management3)
    assert_response :success
  end

  test "should update debt_management3" do
    patch debt_management3_url(@debt_management3), params: { debt_management3: { Amounts: @debt_management3.Amounts, Public_Debt_Repayment_Liabilities: @debt_management3.Public_Debt_Repayment_Liabilities, Year: @debt_management3.Year } }
    assert_redirected_to debt_management3_url(@debt_management3)
  end

  test "should destroy debt_management3" do
    assert_difference('DebtManagement3.count', -1) do
      delete debt_management3_url(@debt_management3)
    end

    assert_redirected_to debt_management3s_url
  end
end
