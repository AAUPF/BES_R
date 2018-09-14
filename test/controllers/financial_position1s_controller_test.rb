require 'test_helper'

class FinancialPosition1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_position1 = financial_position1s(:one)
  end

  test "should get index" do
    get financial_position1s_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_position1_url
    assert_response :success
  end

  test "should create financial_position1" do
    assert_difference('FinancialPosition1.count') do
      post financial_position1s_url, params: { financial_position1: { 2012-13: @financial_position1.2012-13, 2013-14: @financial_position1.2013-14, 2014-15: @financial_position1.2014-15, 2015-16: @financial_position1.2015-16, 2016-17: @financial_position1.2016-17, 2017-18_BE: @financial_position1.2017-18_BE, Indicator: @financial_position1.Indicator, Sector: @financial_position1.Sector } }
    end

    assert_redirected_to financial_position1_url(FinancialPosition1.last)
  end

  test "should show financial_position1" do
    get financial_position1_url(@financial_position1)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_position1_url(@financial_position1)
    assert_response :success
  end

  test "should update financial_position1" do
    patch financial_position1_url(@financial_position1), params: { financial_position1: { 2012-13: @financial_position1.2012-13, 2013-14: @financial_position1.2013-14, 2014-15: @financial_position1.2014-15, 2015-16: @financial_position1.2015-16, 2016-17: @financial_position1.2016-17, 2017-18_BE: @financial_position1.2017-18_BE, Indicator: @financial_position1.Indicator, Sector: @financial_position1.Sector } }
    assert_redirected_to financial_position1_url(@financial_position1)
  end

  test "should destroy financial_position1" do
    assert_difference('FinancialPosition1.count', -1) do
      delete financial_position1_url(@financial_position1)
    end

    assert_redirected_to financial_position1s_url
  end
end
