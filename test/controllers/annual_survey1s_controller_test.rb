require 'test_helper'

class AnnualSurvey1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey1 = annual_survey1s(:one)
  end

  test "should get index" do
    get annual_survey1s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey1_url
    assert_response :success
  end

  test "should create annual_survey1" do
    assert_difference('AnnualSurvey1.count') do
      post annual_survey1s_url, params: { annual_survey1: { Annual_Growth_Rate: @annual_survey1.Annual_Growth_Rate, Sector: @annual_survey1.Sector, Year: @annual_survey1.Year } }
    end

    assert_redirected_to annual_survey1_url(AnnualSurvey1.last)
  end

  test "should show annual_survey1" do
    get annual_survey1_url(@annual_survey1)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey1_url(@annual_survey1)
    assert_response :success
  end

  test "should update annual_survey1" do
    patch annual_survey1_url(@annual_survey1), params: { annual_survey1: { Annual_Growth_Rate: @annual_survey1.Annual_Growth_Rate, Sector: @annual_survey1.Sector, Year: @annual_survey1.Year } }
    assert_redirected_to annual_survey1_url(@annual_survey1)
  end

  test "should destroy annual_survey1" do
    assert_difference('AnnualSurvey1.count', -1) do
      delete annual_survey1_url(@annual_survey1)
    end

    assert_redirected_to annual_survey1s_url
  end
end
