require 'test_helper'

class RevenueAccount1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue_account1 = revenue_account1s(:one)
  end

  test "should get index" do
    get revenue_account1s_url
    assert_response :success
  end

  test "should get new" do
    get new_revenue_account1_url
    assert_response :success
  end

  test "should create revenue_account1" do
    assert_difference('RevenueAccount1.count') do
      post revenue_account1s_url, params: { revenue_account1: { Amount: @revenue_account1.Amount, Revenue_Account: @revenue_account1.Revenue_Account, Year: @revenue_account1.Year } }
    end

    assert_redirected_to revenue_account1_url(RevenueAccount1.last)
  end

  test "should show revenue_account1" do
    get revenue_account1_url(@revenue_account1)
    assert_response :success
  end

  test "should get edit" do
    get edit_revenue_account1_url(@revenue_account1)
    assert_response :success
  end

  test "should update revenue_account1" do
    patch revenue_account1_url(@revenue_account1), params: { revenue_account1: { Amount: @revenue_account1.Amount, Revenue_Account: @revenue_account1.Revenue_Account, Year: @revenue_account1.Year } }
    assert_redirected_to revenue_account1_url(@revenue_account1)
  end

  test "should destroy revenue_account1" do
    assert_difference('RevenueAccount1.count', -1) do
      delete revenue_account1_url(@revenue_account1)
    end

    assert_redirected_to revenue_account1s_url
  end
end
