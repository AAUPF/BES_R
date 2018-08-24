require 'test_helper'

class RevenueAccount2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue_account2 = revenue_account2s(:one)
  end

  test "should get index" do
    get revenue_account2s_url
    assert_response :success
  end

  test "should get new" do
    get new_revenue_account2_url
    assert_response :success
  end

  test "should create revenue_account2" do
    assert_difference('RevenueAccount2.count') do
      post revenue_account2s_url, params: { revenue_account2: { Amount: @revenue_account2.Amount, Expenditure_Pattern: @revenue_account2.Expenditure_Pattern, Year: @revenue_account2.Year } }
    end

    assert_redirected_to revenue_account2_url(RevenueAccount2.last)
  end

  test "should show revenue_account2" do
    get revenue_account2_url(@revenue_account2)
    assert_response :success
  end

  test "should get edit" do
    get edit_revenue_account2_url(@revenue_account2)
    assert_response :success
  end

  test "should update revenue_account2" do
    patch revenue_account2_url(@revenue_account2), params: { revenue_account2: { Amount: @revenue_account2.Amount, Expenditure_Pattern: @revenue_account2.Expenditure_Pattern, Year: @revenue_account2.Year } }
    assert_redirected_to revenue_account2_url(@revenue_account2)
  end

  test "should destroy revenue_account2" do
    assert_difference('RevenueAccount2.count', -1) do
      delete revenue_account2_url(@revenue_account2)
    end

    assert_redirected_to revenue_account2s_url
  end
end
