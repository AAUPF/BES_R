require 'test_helper'

class ExpenditureOnSalaryAndPensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expenditure_on_salary_and_pension = expenditure_on_salary_and_pensions(:one)
  end

  test "should get index" do
    get expenditure_on_salary_and_pensions_url
    assert_response :success
  end

  test "should get new" do
    get new_expenditure_on_salary_and_pension_url
    assert_response :success
  end

  test "should create expenditure_on_salary_and_pension" do
    assert_difference('ExpenditureOnSalaryAndPension.count') do
      post expenditure_on_salary_and_pensions_url, params: { expenditure_on_salary_and_pension: { 2012-13: @expenditure_on_salary_and_pension.2012-13, 2013-14: @expenditure_on_salary_and_pension.2013-14, 2014-15: @expenditure_on_salary_and_pension.2014-15, 2015-16: @expenditure_on_salary_and_pension.2015-16, 2016-17: @expenditure_on_salary_and_pension.2016-17, 2017-18_BE: @expenditure_on_salary_and_pension.2017-18_BE, Sector: @expenditure_on_salary_and_pension.Sector } }
    end

    assert_redirected_to expenditure_on_salary_and_pension_url(ExpenditureOnSalaryAndPension.last)
  end

  test "should show expenditure_on_salary_and_pension" do
    get expenditure_on_salary_and_pension_url(@expenditure_on_salary_and_pension)
    assert_response :success
  end

  test "should get edit" do
    get edit_expenditure_on_salary_and_pension_url(@expenditure_on_salary_and_pension)
    assert_response :success
  end

  test "should update expenditure_on_salary_and_pension" do
    patch expenditure_on_salary_and_pension_url(@expenditure_on_salary_and_pension), params: { expenditure_on_salary_and_pension: { 2012-13: @expenditure_on_salary_and_pension.2012-13, 2013-14: @expenditure_on_salary_and_pension.2013-14, 2014-15: @expenditure_on_salary_and_pension.2014-15, 2015-16: @expenditure_on_salary_and_pension.2015-16, 2016-17: @expenditure_on_salary_and_pension.2016-17, 2017-18_BE: @expenditure_on_salary_and_pension.2017-18_BE, Sector: @expenditure_on_salary_and_pension.Sector } }
    assert_redirected_to expenditure_on_salary_and_pension_url(@expenditure_on_salary_and_pension)
  end

  test "should destroy expenditure_on_salary_and_pension" do
    assert_difference('ExpenditureOnSalaryAndPension.count', -1) do
      delete expenditure_on_salary_and_pension_url(@expenditure_on_salary_and_pension)
    end

    assert_redirected_to expenditure_on_salary_and_pensions_url
  end
end
