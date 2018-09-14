require 'test_helper'

class SectoralExpenditure1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_expenditure1 = sectoral_expenditure1s(:one)
  end

  test "should get index" do
    get sectoral_expenditure1s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_expenditure1_url
    assert_response :success
  end

  test "should create sectoral_expenditure1" do
    assert_difference('SectoralExpenditure1.count') do
      post sectoral_expenditure1s_url, params: { sectoral_expenditure1: { 2012-13: @sectoral_expenditure1.2012-13, 2013-14: @sectoral_expenditure1.2013-14, 2014-15: @sectoral_expenditure1.2014-15, 2015-16: @sectoral_expenditure1.2015-16, 2016-17: @sectoral_expenditure1.2016-17, 2017-18_BE: @sectoral_expenditure1.2017-18_BE, Sector: @sectoral_expenditure1.Sector, indicator: @sectoral_expenditure1.indicator } }
    end

    assert_redirected_to sectoral_expenditure1_url(SectoralExpenditure1.last)
  end

  test "should show sectoral_expenditure1" do
    get sectoral_expenditure1_url(@sectoral_expenditure1)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_expenditure1_url(@sectoral_expenditure1)
    assert_response :success
  end

  test "should update sectoral_expenditure1" do
    patch sectoral_expenditure1_url(@sectoral_expenditure1), params: { sectoral_expenditure1: { 2012-13: @sectoral_expenditure1.2012-13, 2013-14: @sectoral_expenditure1.2013-14, 2014-15: @sectoral_expenditure1.2014-15, 2015-16: @sectoral_expenditure1.2015-16, 2016-17: @sectoral_expenditure1.2016-17, 2017-18_BE: @sectoral_expenditure1.2017-18_BE, Sector: @sectoral_expenditure1.Sector, indicator: @sectoral_expenditure1.indicator } }
    assert_redirected_to sectoral_expenditure1_url(@sectoral_expenditure1)
  end

  test "should destroy sectoral_expenditure1" do
    assert_difference('SectoralExpenditure1.count', -1) do
      delete sectoral_expenditure1_url(@sectoral_expenditure1)
    end

    assert_redirected_to sectoral_expenditure1s_url
  end
end
