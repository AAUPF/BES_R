require 'test_helper'

class RuralInfrastructureDevelopmentFundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rural_infrastructure_development_fund = rural_infrastructure_development_funds(:one)
  end

  test "should get index" do
    get rural_infrastructure_development_funds_url
    assert_response :success
  end

  test "should get new" do
    get new_rural_infrastructure_development_fund_url
    assert_response :success
  end

  test "should create rural_infrastructure_development_fund" do
    assert_difference('RuralInfrastructureDevelopmentFund.count') do
      post rural_infrastructure_development_funds_url, params: { rural_infrastructure_development_fund: { Disbursement: @rural_infrastructure_development_fund.Disbursement, Disbursement_Percentage: @rural_infrastructure_development_fund.Disbursement_Percentage, RIDF_Tranche: @rural_infrastructure_development_fund.RIDF_Tranche, Sanction: @rural_infrastructure_development_fund.Sanction } }
    end

    assert_redirected_to rural_infrastructure_development_fund_url(RuralInfrastructureDevelopmentFund.last)
  end

  test "should show rural_infrastructure_development_fund" do
    get rural_infrastructure_development_fund_url(@rural_infrastructure_development_fund)
    assert_response :success
  end

  test "should get edit" do
    get edit_rural_infrastructure_development_fund_url(@rural_infrastructure_development_fund)
    assert_response :success
  end

  test "should update rural_infrastructure_development_fund" do
    patch rural_infrastructure_development_fund_url(@rural_infrastructure_development_fund), params: { rural_infrastructure_development_fund: { Disbursement: @rural_infrastructure_development_fund.Disbursement, Disbursement_Percentage: @rural_infrastructure_development_fund.Disbursement_Percentage, RIDF_Tranche: @rural_infrastructure_development_fund.RIDF_Tranche, Sanction: @rural_infrastructure_development_fund.Sanction } }
    assert_redirected_to rural_infrastructure_development_fund_url(@rural_infrastructure_development_fund)
  end

  test "should destroy rural_infrastructure_development_fund" do
    assert_difference('RuralInfrastructureDevelopmentFund.count', -1) do
      delete rural_infrastructure_development_fund_url(@rural_infrastructure_development_fund)
    end

    assert_redirected_to rural_infrastructure_development_funds_url
  end
end
