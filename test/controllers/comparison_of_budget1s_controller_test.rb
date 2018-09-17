require 'test_helper'

class ComparisonOfBudget1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comparison_of_budget1 = comparison_of_budget1s(:one)
  end

  test "should get index" do
    get comparison_of_budget1s_url
    assert_response :success
  end

  test "should get new" do
    get new_comparison_of_budget1_url
    assert_response :success
  end

  test "should create comparison_of_budget1" do
    assert_difference('ComparisonOfBudget1.count') do
      post comparison_of_budget1s_url, params: { comparison_of_budget1: { 2016-17: @comparison_of_budget1.2016-17, 2017-18_BE: @comparison_of_budget1.2017-18_BE, Indicator: @comparison_of_budget1.Indicator, Sector: @comparison_of_budget1.Sector, Sub_sector: @comparison_of_budget1.Sub_sector } }
    end

    assert_redirected_to comparison_of_budget1_url(ComparisonOfBudget1.last)
  end

  test "should show comparison_of_budget1" do
    get comparison_of_budget1_url(@comparison_of_budget1)
    assert_response :success
  end

  test "should get edit" do
    get edit_comparison_of_budget1_url(@comparison_of_budget1)
    assert_response :success
  end

  test "should update comparison_of_budget1" do
    patch comparison_of_budget1_url(@comparison_of_budget1), params: { comparison_of_budget1: { 2016-17: @comparison_of_budget1.2016-17, 2017-18_BE: @comparison_of_budget1.2017-18_BE, Indicator: @comparison_of_budget1.Indicator, Sector: @comparison_of_budget1.Sector, Sub_sector: @comparison_of_budget1.Sub_sector } }
    assert_redirected_to comparison_of_budget1_url(@comparison_of_budget1)
  end

  test "should destroy comparison_of_budget1" do
    assert_difference('ComparisonOfBudget1.count', -1) do
      delete comparison_of_budget1_url(@comparison_of_budget1)
    end

    assert_redirected_to comparison_of_budget1s_url
  end
end
