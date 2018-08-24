require 'test_helper'

class RevenueAccount3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue_account3 = revenue_account3s(:one)
  end

  test "should get index" do
    get revenue_account3s_url
    assert_response :success
  end

  test "should get new" do
    get new_revenue_account3_url
    assert_response :success
  end

  test "should create revenue_account3" do
    assert_difference('RevenueAccount3.count') do
      post revenue_account3s_url, params: { revenue_account3: { Amount: @revenue_account3.Amount, Interest_Payment_and_Receipt: @revenue_account3.Interest_Payment_and_Receipt, Year: @revenue_account3.Year } }
    end

    assert_redirected_to revenue_account3_url(RevenueAccount3.last)
  end

  test "should show revenue_account3" do
    get revenue_account3_url(@revenue_account3)
    assert_response :success
  end

  test "should get edit" do
    get edit_revenue_account3_url(@revenue_account3)
    assert_response :success
  end

  test "should update revenue_account3" do
    patch revenue_account3_url(@revenue_account3), params: { revenue_account3: { Amount: @revenue_account3.Amount, Interest_Payment_and_Receipt: @revenue_account3.Interest_Payment_and_Receipt, Year: @revenue_account3.Year } }
    assert_redirected_to revenue_account3_url(@revenue_account3)
  end

  test "should destroy revenue_account3" do
    assert_difference('RevenueAccount3.count', -1) do
      delete revenue_account3_url(@revenue_account3)
    end

    assert_redirected_to revenue_account3s_url
  end
end
