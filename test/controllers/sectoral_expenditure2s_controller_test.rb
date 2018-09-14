require 'test_helper'

class SectoralExpenditure2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_expenditure2 = sectoral_expenditure2s(:one)
  end

  test "should get index" do
    get sectoral_expenditure2s_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_expenditure2_url
    assert_response :success
  end

  test "should create sectoral_expenditure2" do
    assert_difference('SectoralExpenditure2.count') do
      post sectoral_expenditure2s_url, params: { sectoral_expenditure2: { 2012-13: @sectoral_expenditure2.2012-13, 2013-14: @sectoral_expenditure2.2013-14, 2014-15: @sectoral_expenditure2.2014-15, 2015-16: @sectoral_expenditure2.2015-16, 2016-17: @sectoral_expenditure2.2016-17, 2017-18_BE: @sectoral_expenditure2.2017-18_BE, Sector: @sectoral_expenditure2.Sector, Sub_Sector: @sectoral_expenditure2.Sub_Sector } }
    end

    assert_redirected_to sectoral_expenditure2_url(SectoralExpenditure2.last)
  end

  test "should show sectoral_expenditure2" do
    get sectoral_expenditure2_url(@sectoral_expenditure2)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_expenditure2_url(@sectoral_expenditure2)
    assert_response :success
  end

  test "should update sectoral_expenditure2" do
    patch sectoral_expenditure2_url(@sectoral_expenditure2), params: { sectoral_expenditure2: { 2012-13: @sectoral_expenditure2.2012-13, 2013-14: @sectoral_expenditure2.2013-14, 2014-15: @sectoral_expenditure2.2014-15, 2015-16: @sectoral_expenditure2.2015-16, 2016-17: @sectoral_expenditure2.2016-17, 2017-18_BE: @sectoral_expenditure2.2017-18_BE, Sector: @sectoral_expenditure2.Sector, Sub_Sector: @sectoral_expenditure2.Sub_Sector } }
    assert_redirected_to sectoral_expenditure2_url(@sectoral_expenditure2)
  end

  test "should destroy sectoral_expenditure2" do
    assert_difference('SectoralExpenditure2.count', -1) do
      delete sectoral_expenditure2_url(@sectoral_expenditure2)
    end

    assert_redirected_to sectoral_expenditure2s_url
  end
end
