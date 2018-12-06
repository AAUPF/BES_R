require 'test_helper'

class SocialWelfare1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_welfare1 = social_welfare1s(:one)
  end

  test "should get index" do
    get social_welfare1s_url
    assert_response :success
  end

  test "should get new" do
    get new_social_welfare1_url
    assert_response :success
  end

  test "should create social_welfare1" do
    assert_difference('SocialWelfare1.count') do
      post social_welfare1s_url, params: { social_welfare1: { Bank_Loan: @social_welfare1.Bank_Loan, Margin_Money: @social_welfare1.Margin_Money, Number_of_Beneficiaries: @social_welfare1.Number_of_Beneficiaries, Scheme: @social_welfare1.Scheme, Subsidy: @social_welfare1.Subsidy, Term_Loan: @social_welfare1.Term_Loan, Total: @social_welfare1.Total } }
    end

    assert_redirected_to social_welfare1_url(SocialWelfare1.last)
  end

  test "should show social_welfare1" do
    get social_welfare1_url(@social_welfare1)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_welfare1_url(@social_welfare1)
    assert_response :success
  end

  test "should update social_welfare1" do
    patch social_welfare1_url(@social_welfare1), params: { social_welfare1: { Bank_Loan: @social_welfare1.Bank_Loan, Margin_Money: @social_welfare1.Margin_Money, Number_of_Beneficiaries: @social_welfare1.Number_of_Beneficiaries, Scheme: @social_welfare1.Scheme, Subsidy: @social_welfare1.Subsidy, Term_Loan: @social_welfare1.Term_Loan, Total: @social_welfare1.Total } }
    assert_redirected_to social_welfare1_url(@social_welfare1)
  end

  test "should destroy social_welfare1" do
    assert_difference('SocialWelfare1.count', -1) do
      delete social_welfare1_url(@social_welfare1)
    end

    assert_redirected_to social_welfare1s_url
  end
end
