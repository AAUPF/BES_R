require 'test_helper'

class FiscalPerformance1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fiscal_performance1 = fiscal_performance1s(:one)
  end

  test "should get index" do
    get fiscal_performance1s_url
    assert_response :success
  end

  test "should get new" do
    get new_fiscal_performance1_url
    assert_response :success
  end

  test "should create fiscal_performance1" do
    assert_difference('FiscalPerformance1.count') do
      post fiscal_performance1s_url, params: { fiscal_performance1: { Capital_Outlay_GFD_Percentage: @fiscal_performance1.Capital_Outlay_GFD_Percentage, Debt_Servicing_Gross_Transfers_Percentage: @fiscal_performance1.Debt_Servicing_Gross_Transfers_Percentage, Gross_Transfers_Aggregate_Disbursements_Percentage: @fiscal_performance1.Gross_Transfers_Aggregate_Disbursements_Percentage, Interest_Payments_Revenue_Exp_Percentage: @fiscal_performance1.Interest_Payments_Revenue_Exp_Percentage, Non_Dev_Exp_Agg_Disbursements_Percentage: @fiscal_performance1.Non_Dev_Exp_Agg_Disbursements_Percentage, Non_Dev_Exp_Revenue_Receipts_Percentage: @fiscal_performance1.Non_Dev_Exp_Revenue_Receipts_Percentage, Revenue_Deficit_GFD_Percentage: @fiscal_performance1.Revenue_Deficit_GFD_Percentage, State: @fiscal_performance1.State, State_Own_Revenue_Revenue_Exp_Percentage: @fiscal_performance1.State_Own_Revenue_Revenue_Exp_Percentage, Year: @fiscal_performance1.Year } }
    end

    assert_redirected_to fiscal_performance1_url(FiscalPerformance1.last)
  end

  test "should show fiscal_performance1" do
    get fiscal_performance1_url(@fiscal_performance1)
    assert_response :success
  end

  test "should get edit" do
    get edit_fiscal_performance1_url(@fiscal_performance1)
    assert_response :success
  end

  test "should update fiscal_performance1" do
    patch fiscal_performance1_url(@fiscal_performance1), params: { fiscal_performance1: { Capital_Outlay_GFD_Percentage: @fiscal_performance1.Capital_Outlay_GFD_Percentage, Debt_Servicing_Gross_Transfers_Percentage: @fiscal_performance1.Debt_Servicing_Gross_Transfers_Percentage, Gross_Transfers_Aggregate_Disbursements_Percentage: @fiscal_performance1.Gross_Transfers_Aggregate_Disbursements_Percentage, Interest_Payments_Revenue_Exp_Percentage: @fiscal_performance1.Interest_Payments_Revenue_Exp_Percentage, Non_Dev_Exp_Agg_Disbursements_Percentage: @fiscal_performance1.Non_Dev_Exp_Agg_Disbursements_Percentage, Non_Dev_Exp_Revenue_Receipts_Percentage: @fiscal_performance1.Non_Dev_Exp_Revenue_Receipts_Percentage, Revenue_Deficit_GFD_Percentage: @fiscal_performance1.Revenue_Deficit_GFD_Percentage, State: @fiscal_performance1.State, State_Own_Revenue_Revenue_Exp_Percentage: @fiscal_performance1.State_Own_Revenue_Revenue_Exp_Percentage, Year: @fiscal_performance1.Year } }
    assert_redirected_to fiscal_performance1_url(@fiscal_performance1)
  end

  test "should destroy fiscal_performance1" do
    assert_difference('FiscalPerformance1.count', -1) do
      delete fiscal_performance1_url(@fiscal_performance1)
    end

    assert_redirected_to fiscal_performance1s_url
  end
end
