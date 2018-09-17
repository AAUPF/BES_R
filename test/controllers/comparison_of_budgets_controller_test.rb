require 'test_helper'

class ComparisonOfBudgetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comparison_of_budget = comparison_of_budgets(:one)
  end

  test "should get index" do
    get comparison_of_budgets_url
    assert_response :success
  end

  test "should get new" do
    get new_comparison_of_budget_url
    assert_response :success
  end

  test "should create comparison_of_budget" do
    assert_difference('ComparisonOfBudget.count') do
      post comparison_of_budgets_url, params: { comparison_of_budget: { 2016-17: @comparison_of_budget.2016-17, 2017-18_BE: @comparison_of_budget.2017-18_BE, Sector: @comparison_of_budget.Sector } }
    end

    assert_redirected_to comparison_of_budget_url(ComparisonOfBudget.last)
  end

  test "should show comparison_of_budget" do
    get comparison_of_budget_url(@comparison_of_budget)
    assert_response :success
  end

  test "should get edit" do
    get edit_comparison_of_budget_url(@comparison_of_budget)
    assert_response :success
  end

  test "should update comparison_of_budget" do
    patch comparison_of_budget_url(@comparison_of_budget), params: { comparison_of_budget: { 2016-17: @comparison_of_budget.2016-17, 2017-18_BE: @comparison_of_budget.2017-18_BE, Sector: @comparison_of_budget.Sector } }
    assert_redirected_to comparison_of_budget_url(@comparison_of_budget)
  end

  test "should destroy comparison_of_budget" do
    assert_difference('ComparisonOfBudget.count', -1) do
      delete comparison_of_budget_url(@comparison_of_budget)
    end

    assert_redirected_to comparison_of_budgets_url
  end
end
