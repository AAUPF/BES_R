require 'test_helper'

class FinancialInstitutions2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_institutions2 = financial_institutions2s(:one)
  end

  test "should get index" do
    get financial_institutions2s_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_institutions2_url
    assert_response :success
  end

  test "should create financial_institutions2" do
    assert_difference('FinancialInstitutions2.count') do
      post financial_institutions2s_url, params: { financial_institutions2: { 2010-11: @financial_institutions2.2010-11, 2011-12: @financial_institutions2.2011-12, 2012-13: @financial_institutions2.2012-13, 2013-14: @financial_institutions2.2013-14, 2014-15: @financial_institutions2.2014-15, 2015-16: @financial_institutions2.2015-16, 2016-17: @financial_institutions2.2016-17, Sectors: @financial_institutions2.Sectors } }
    end

    assert_redirected_to financial_institutions2_url(FinancialInstitutions2.last)
  end

  test "should show financial_institutions2" do
    get financial_institutions2_url(@financial_institutions2)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_institutions2_url(@financial_institutions2)
    assert_response :success
  end

  test "should update financial_institutions2" do
    patch financial_institutions2_url(@financial_institutions2), params: { financial_institutions2: { 2010-11: @financial_institutions2.2010-11, 2011-12: @financial_institutions2.2011-12, 2012-13: @financial_institutions2.2012-13, 2013-14: @financial_institutions2.2013-14, 2014-15: @financial_institutions2.2014-15, 2015-16: @financial_institutions2.2015-16, 2016-17: @financial_institutions2.2016-17, Sectors: @financial_institutions2.Sectors } }
    assert_redirected_to financial_institutions2_url(@financial_institutions2)
  end

  test "should destroy financial_institutions2" do
    assert_difference('FinancialInstitutions2.count', -1) do
      delete financial_institutions2_url(@financial_institutions2)
    end

    assert_redirected_to financial_institutions2s_url
  end
end
