require 'test_helper'

class SectoralExpendituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sectoral_expenditure = sectoral_expenditures(:one)
  end

  test "should get index" do
    get sectoral_expenditures_url
    assert_response :success
  end

  test "should get new" do
    get new_sectoral_expenditure_url
    assert_response :success
  end

  test "should create sectoral_expenditure" do
    assert_difference('SectoralExpenditure.count') do
      post sectoral_expenditures_url, params: { sectoral_expenditure: { 2012-13: @sectoral_expenditure.2012-13, 2013-14: @sectoral_expenditure.2013-14, 2014-15: @sectoral_expenditure.2014-15, 2015-16: @sectoral_expenditure.2015-16, 2016-17: @sectoral_expenditure.2016-17, 2017-18_BE: @sectoral_expenditure.2017-18_BE, Sector: @sectoral_expenditure.Sector, indicator: @sectoral_expenditure.indicator } }
    end

    assert_redirected_to sectoral_expenditure_url(SectoralExpenditure.last)
  end

  test "should show sectoral_expenditure" do
    get sectoral_expenditure_url(@sectoral_expenditure)
    assert_response :success
  end

  test "should get edit" do
    get edit_sectoral_expenditure_url(@sectoral_expenditure)
    assert_response :success
  end

  test "should update sectoral_expenditure" do
    patch sectoral_expenditure_url(@sectoral_expenditure), params: { sectoral_expenditure: { 2012-13: @sectoral_expenditure.2012-13, 2013-14: @sectoral_expenditure.2013-14, 2014-15: @sectoral_expenditure.2014-15, 2015-16: @sectoral_expenditure.2015-16, 2016-17: @sectoral_expenditure.2016-17, 2017-18_BE: @sectoral_expenditure.2017-18_BE, Sector: @sectoral_expenditure.Sector, indicator: @sectoral_expenditure.indicator } }
    assert_redirected_to sectoral_expenditure_url(@sectoral_expenditure)
  end

  test "should destroy sectoral_expenditure" do
    assert_difference('SectoralExpenditure.count', -1) do
      delete sectoral_expenditure_url(@sectoral_expenditure)
    end

    assert_redirected_to sectoral_expenditures_url
  end
end
