require 'test_helper'

class AnnualSurvey6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey6 = annual_survey6s(:one)
  end

  test "should get index" do
    get annual_survey6s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey6_url
    assert_response :success
  end

  test "should create annual_survey6" do
    assert_difference('AnnualSurvey6.count') do
      post annual_survey6s_url, params: { annual_survey6: { Districts: @annual_survey6.Districts, Employment_per_Factory: @annual_survey6.Employment_per_Factory, GVA_Percentage_Share_in_India: @annual_survey6.GVA_Percentage_Share_in_India, GVA_as_Percentage_of_GVO: @annual_survey6.GVA_as_Percentage_of_GVO, Gross_Value_Added_GVA_Rs_crore: @annual_survey6.Gross_Value_Added_GVA_Rs_crore, Gross_Value_of_Output_GVO_Rs_crore: @annual_survey6.Gross_Value_of_Output_GVO_Rs_crore, Number_of_Factories_in_Operation: @annual_survey6.Number_of_Factories_in_Operation, Number_of_Persons_Engaged: @annual_survey6.Number_of_Persons_Engaged, Percentage_Share_in_India: @annual_survey6.Percentage_Share_in_India, Wages_Salaries_and_Bonus_per_Person_annually_Rs: @annual_survey6.Wages_Salaries_and_Bonus_per_Person_annually_Rs } }
    end

    assert_redirected_to annual_survey6_url(AnnualSurvey6.last)
  end

  test "should show annual_survey6" do
    get annual_survey6_url(@annual_survey6)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey6_url(@annual_survey6)
    assert_response :success
  end

  test "should update annual_survey6" do
    patch annual_survey6_url(@annual_survey6), params: { annual_survey6: { Districts: @annual_survey6.Districts, Employment_per_Factory: @annual_survey6.Employment_per_Factory, GVA_Percentage_Share_in_India: @annual_survey6.GVA_Percentage_Share_in_India, GVA_as_Percentage_of_GVO: @annual_survey6.GVA_as_Percentage_of_GVO, Gross_Value_Added_GVA_Rs_crore: @annual_survey6.Gross_Value_Added_GVA_Rs_crore, Gross_Value_of_Output_GVO_Rs_crore: @annual_survey6.Gross_Value_of_Output_GVO_Rs_crore, Number_of_Factories_in_Operation: @annual_survey6.Number_of_Factories_in_Operation, Number_of_Persons_Engaged: @annual_survey6.Number_of_Persons_Engaged, Percentage_Share_in_India: @annual_survey6.Percentage_Share_in_India, Wages_Salaries_and_Bonus_per_Person_annually_Rs: @annual_survey6.Wages_Salaries_and_Bonus_per_Person_annually_Rs } }
    assert_redirected_to annual_survey6_url(@annual_survey6)
  end

  test "should destroy annual_survey6" do
    assert_difference('AnnualSurvey6.count', -1) do
      delete annual_survey6_url(@annual_survey6)
    end

    assert_redirected_to annual_survey6s_url
  end
end
