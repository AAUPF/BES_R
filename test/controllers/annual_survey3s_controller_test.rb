require 'test_helper'

class AnnualSurvey3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey3 = annual_survey3s(:one)
  end

  test "should get index" do
    get annual_survey3s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey3_url
    assert_response :success
  end

  test "should create annual_survey3" do
    assert_difference('AnnualSurvey3.count') do
      post annual_survey3s_url, params: { annual_survey3: { Indicator: @annual_survey3.Indicator, Number_of_Factories_Agro_based: @annual_survey3.Number_of_Factories_Agro_based, Number_of_Factories_Non_Agro_based: @annual_survey3.Number_of_Factories_Non_Agro_based, Number_of_Factories_in_Operation_Agro_based: @annual_survey3.Number_of_Factories_in_Operation_Agro_based, Number_of_Factories_in_Operation_Non_Agro_Based: @annual_survey3.Number_of_Factories_in_Operation_Non_Agro_Based, Percentage_of_Agro_based: @annual_survey3.Percentage_of_Agro_based, Percentage_of_Non_Agro_based: @annual_survey3.Percentage_of_Non_Agro_based, Percentage_of_Operation_Agro_based: @annual_survey3.Percentage_of_Operation_Agro_based, Percentage_of_Operation_Non_Agro_Based: @annual_survey3.Percentage_of_Operation_Non_Agro_Based, Percentage_of_Total_Factories: @annual_survey3.Percentage_of_Total_Factories, Percentage_of_Total_Factories_in_Operation: @annual_survey3.Percentage_of_Total_Factories_in_Operation, Total_Number_of_Factories: @annual_survey3.Total_Number_of_Factories, Total_Number_of_Factories_in_Operation: @annual_survey3.Total_Number_of_Factories_in_Operation, Year: @annual_survey3.Year } }
    end

    assert_redirected_to annual_survey3_url(AnnualSurvey3.last)
  end

  test "should show annual_survey3" do
    get annual_survey3_url(@annual_survey3)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey3_url(@annual_survey3)
    assert_response :success
  end

  test "should update annual_survey3" do
    patch annual_survey3_url(@annual_survey3), params: { annual_survey3: { Indicator: @annual_survey3.Indicator, Number_of_Factories_Agro_based: @annual_survey3.Number_of_Factories_Agro_based, Number_of_Factories_Non_Agro_based: @annual_survey3.Number_of_Factories_Non_Agro_based, Number_of_Factories_in_Operation_Agro_based: @annual_survey3.Number_of_Factories_in_Operation_Agro_based, Number_of_Factories_in_Operation_Non_Agro_Based: @annual_survey3.Number_of_Factories_in_Operation_Non_Agro_Based, Percentage_of_Agro_based: @annual_survey3.Percentage_of_Agro_based, Percentage_of_Non_Agro_based: @annual_survey3.Percentage_of_Non_Agro_based, Percentage_of_Operation_Agro_based: @annual_survey3.Percentage_of_Operation_Agro_based, Percentage_of_Operation_Non_Agro_Based: @annual_survey3.Percentage_of_Operation_Non_Agro_Based, Percentage_of_Total_Factories: @annual_survey3.Percentage_of_Total_Factories, Percentage_of_Total_Factories_in_Operation: @annual_survey3.Percentage_of_Total_Factories_in_Operation, Total_Number_of_Factories: @annual_survey3.Total_Number_of_Factories, Total_Number_of_Factories_in_Operation: @annual_survey3.Total_Number_of_Factories_in_Operation, Year: @annual_survey3.Year } }
    assert_redirected_to annual_survey3_url(@annual_survey3)
  end

  test "should destroy annual_survey3" do
    assert_difference('AnnualSurvey3.count', -1) do
      delete annual_survey3_url(@annual_survey3)
    end

    assert_redirected_to annual_survey3s_url
  end
end
