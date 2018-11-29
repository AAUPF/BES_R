require 'test_helper'

class FinancialInstitutions1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_institutions1 = financial_institutions1s(:one)
  end

  test "should get index" do
    get financial_institutions1s_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_institutions1_url
    assert_response :success
  end

  test "should create financial_institutions1" do
    assert_difference('FinancialInstitutions1.count') do
      post financial_institutions1s_url, params: { financial_institutions1: { Crop_Loan_Refinance: @financial_institutions1.Crop_Loan_Refinance, Investment_Credit_Refinancing: @financial_institutions1.Investment_Credit_Refinancing, RIDF_plus_WIF_plus_FPF_Loan_sanctioned: @financial_institutions1.RIDF_plus_WIF_plus_FPF_Loan_sanctioned, Total_Financial_Support: @financial_institutions1.Total_Financial_Support, Year: @financial_institutions1.Year } }
    end

    assert_redirected_to financial_institutions1_url(FinancialInstitutions1.last)
  end

  test "should show financial_institutions1" do
    get financial_institutions1_url(@financial_institutions1)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_institutions1_url(@financial_institutions1)
    assert_response :success
  end

  test "should update financial_institutions1" do
    patch financial_institutions1_url(@financial_institutions1), params: { financial_institutions1: { Crop_Loan_Refinance: @financial_institutions1.Crop_Loan_Refinance, Investment_Credit_Refinancing: @financial_institutions1.Investment_Credit_Refinancing, RIDF_plus_WIF_plus_FPF_Loan_sanctioned: @financial_institutions1.RIDF_plus_WIF_plus_FPF_Loan_sanctioned, Total_Financial_Support: @financial_institutions1.Total_Financial_Support, Year: @financial_institutions1.Year } }
    assert_redirected_to financial_institutions1_url(@financial_institutions1)
  end

  test "should destroy financial_institutions1" do
    assert_difference('FinancialInstitutions1.count', -1) do
      delete financial_institutions1_url(@financial_institutions1)
    end

    assert_redirected_to financial_institutions1s_url
  end
end
