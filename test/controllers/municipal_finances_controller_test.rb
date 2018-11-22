require 'test_helper'

class MunicipalFinancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @municipal_finance = municipal_finances(:one)
  end

  test "should get index" do
    get municipal_finances_url
    assert_response :success
  end

  test "should get new" do
    get new_municipal_finance_url
    assert_response :success
  end

  test "should create municipal_finance" do
    assert_difference('MunicipalFinance.count') do
      post municipal_finances_url, params: { municipal_finance: { 2014-15: @municipal_finance.2014-15, 2015-16: @municipal_finance.2015-16, Indicator: @municipal_finance.Indicator, Indicators: @municipal_finance.Indicators } }
    end

    assert_redirected_to municipal_finance_url(MunicipalFinance.last)
  end

  test "should show municipal_finance" do
    get municipal_finance_url(@municipal_finance)
    assert_response :success
  end

  test "should get edit" do
    get edit_municipal_finance_url(@municipal_finance)
    assert_response :success
  end

  test "should update municipal_finance" do
    patch municipal_finance_url(@municipal_finance), params: { municipal_finance: { 2014-15: @municipal_finance.2014-15, 2015-16: @municipal_finance.2015-16, Indicator: @municipal_finance.Indicator, Indicators: @municipal_finance.Indicators } }
    assert_redirected_to municipal_finance_url(@municipal_finance)
  end

  test "should destroy municipal_finance" do
    assert_difference('MunicipalFinance.count', -1) do
      delete municipal_finance_url(@municipal_finance)
    end

    assert_redirected_to municipal_finances_url
  end
end
