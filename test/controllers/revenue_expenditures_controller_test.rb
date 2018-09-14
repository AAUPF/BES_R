require 'test_helper'

class RevenueExpendituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revenue_expenditure = revenue_expenditures(:one)
  end

  test "should get index" do
    get revenue_expenditures_url
    assert_response :success
  end

  test "should get new" do
    get new_revenue_expenditure_url
    assert_response :success
  end

  test "should create revenue_expenditure" do
    assert_difference('RevenueExpenditure.count') do
      post revenue_expenditures_url, params: { revenue_expenditure: { 2012-13: @revenue_expenditure.2012-13, 2012-17: @revenue_expenditure.2012-17, 2013-14: @revenue_expenditure.2013-14, 2014-15: @revenue_expenditure.2014-15, 2015-16: @revenue_expenditure.2015-16, 2016-17: @revenue_expenditure.2016-17, 2017-18_BE: @revenue_expenditure.2017-18_BE, Sector: @revenue_expenditure.Sector } }
    end

    assert_redirected_to revenue_expenditure_url(RevenueExpenditure.last)
  end

  test "should show revenue_expenditure" do
    get revenue_expenditure_url(@revenue_expenditure)
    assert_response :success
  end

  test "should get edit" do
    get edit_revenue_expenditure_url(@revenue_expenditure)
    assert_response :success
  end

  test "should update revenue_expenditure" do
    patch revenue_expenditure_url(@revenue_expenditure), params: { revenue_expenditure: { 2012-13: @revenue_expenditure.2012-13, 2012-17: @revenue_expenditure.2012-17, 2013-14: @revenue_expenditure.2013-14, 2014-15: @revenue_expenditure.2014-15, 2015-16: @revenue_expenditure.2015-16, 2016-17: @revenue_expenditure.2016-17, 2017-18_BE: @revenue_expenditure.2017-18_BE, Sector: @revenue_expenditure.Sector } }
    assert_redirected_to revenue_expenditure_url(@revenue_expenditure)
  end

  test "should destroy revenue_expenditure" do
    assert_difference('RevenueExpenditure.count', -1) do
      delete revenue_expenditure_url(@revenue_expenditure)
    end

    assert_redirected_to revenue_expenditures_url
  end
end
