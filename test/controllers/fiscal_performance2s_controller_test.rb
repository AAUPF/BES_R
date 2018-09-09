require 'test_helper'

class FiscalPerformance2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fiscal_performance2 = fiscal_performance2s(:one)
  end

  test "should get index" do
    get fiscal_performance2s_url
    assert_response :success
  end

  test "should get new" do
    get new_fiscal_performance2_url
    assert_response :success
  end

  test "should create fiscal_performance2" do
    assert_difference('FiscalPerformance2.count') do
      post fiscal_performance2s_url, params: { fiscal_performance2: { 2012-13: @fiscal_performance2.2012-13, 2013-14: @fiscal_performance2.2013-14, 2014-15: @fiscal_performance2.2014-15, 2015-16: @fiscal_performance2.2015-16, 2016-17: @fiscal_performance2.2016-17, 2017-18_BE: @fiscal_performance2.2017-18_BE, Sector: @fiscal_performance2.Sector, Sub_Sector: @fiscal_performance2.Sub_Sector } }
    end

    assert_redirected_to fiscal_performance2_url(FiscalPerformance2.last)
  end

  test "should show fiscal_performance2" do
    get fiscal_performance2_url(@fiscal_performance2)
    assert_response :success
  end

  test "should get edit" do
    get edit_fiscal_performance2_url(@fiscal_performance2)
    assert_response :success
  end

  test "should update fiscal_performance2" do
    patch fiscal_performance2_url(@fiscal_performance2), params: { fiscal_performance2: { 2012-13: @fiscal_performance2.2012-13, 2013-14: @fiscal_performance2.2013-14, 2014-15: @fiscal_performance2.2014-15, 2015-16: @fiscal_performance2.2015-16, 2016-17: @fiscal_performance2.2016-17, 2017-18_BE: @fiscal_performance2.2017-18_BE, Sector: @fiscal_performance2.Sector, Sub_Sector: @fiscal_performance2.Sub_Sector } }
    assert_redirected_to fiscal_performance2_url(@fiscal_performance2)
  end

  test "should destroy fiscal_performance2" do
    assert_difference('FiscalPerformance2.count', -1) do
      delete fiscal_performance2_url(@fiscal_performance2)
    end

    assert_redirected_to fiscal_performance2s_url
  end
end
