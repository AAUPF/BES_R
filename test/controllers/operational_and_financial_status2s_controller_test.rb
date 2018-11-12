require 'test_helper'

class OperationalAndFinancialStatus2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operational_and_financial_status2 = operational_and_financial_status2s(:one)
  end

  test "should get index" do
    get operational_and_financial_status2s_url
    assert_response :success
  end

  test "should get new" do
    get new_operational_and_financial_status2_url
    assert_response :success
  end

  test "should create operational_and_financial_status2" do
    assert_difference('OperationalAndFinancialStatus2.count') do
      post operational_and_financial_status2s_url, params: { operational_and_financial_status2: { 2011-12: @operational_and_financial_status2.2011-12, 2012-13: @operational_and_financial_status2.2012-13, 2013-14: @operational_and_financial_status2.2013-14, 2014-15: @operational_and_financial_status2.2014-15, 2015-16: @operational_and_financial_status2.2015-16, 2016-17: @operational_and_financial_status2.2016-17, Losses: @operational_and_financial_status2.Losses } }
    end

    assert_redirected_to operational_and_financial_status2_url(OperationalAndFinancialStatus2.last)
  end

  test "should show operational_and_financial_status2" do
    get operational_and_financial_status2_url(@operational_and_financial_status2)
    assert_response :success
  end

  test "should get edit" do
    get edit_operational_and_financial_status2_url(@operational_and_financial_status2)
    assert_response :success
  end

  test "should update operational_and_financial_status2" do
    patch operational_and_financial_status2_url(@operational_and_financial_status2), params: { operational_and_financial_status2: { 2011-12: @operational_and_financial_status2.2011-12, 2012-13: @operational_and_financial_status2.2012-13, 2013-14: @operational_and_financial_status2.2013-14, 2014-15: @operational_and_financial_status2.2014-15, 2015-16: @operational_and_financial_status2.2015-16, 2016-17: @operational_and_financial_status2.2016-17, Losses: @operational_and_financial_status2.Losses } }
    assert_redirected_to operational_and_financial_status2_url(@operational_and_financial_status2)
  end

  test "should destroy operational_and_financial_status2" do
    assert_difference('OperationalAndFinancialStatus2.count', -1) do
      delete operational_and_financial_status2_url(@operational_and_financial_status2)
    end

    assert_redirected_to operational_and_financial_status2s_url
  end
end
