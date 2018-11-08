require 'test_helper'

class AnnualSurvey7sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey7 = annual_survey7s(:one)
  end

  test "should get index" do
    get annual_survey7s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey7_url
    assert_response :success
  end

  test "should create annual_survey7" do
    assert_difference('AnnualSurvey7.count') do
      post annual_survey7s_url, params: { annual_survey7: { Bihar: @annual_survey7.Bihar, India: @annual_survey7.India, Indicator: @annual_survey7.Indicator, Indicator1: @annual_survey7.Indicator1, Industrial_Group: @annual_survey7.Industrial_Group } }
    end

    assert_redirected_to annual_survey7_url(AnnualSurvey7.last)
  end

  test "should show annual_survey7" do
    get annual_survey7_url(@annual_survey7)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey7_url(@annual_survey7)
    assert_response :success
  end

  test "should update annual_survey7" do
    patch annual_survey7_url(@annual_survey7), params: { annual_survey7: { Bihar: @annual_survey7.Bihar, India: @annual_survey7.India, Indicator: @annual_survey7.Indicator, Indicator1: @annual_survey7.Indicator1, Industrial_Group: @annual_survey7.Industrial_Group } }
    assert_redirected_to annual_survey7_url(@annual_survey7)
  end

  test "should destroy annual_survey7" do
    assert_difference('AnnualSurvey7.count', -1) do
      delete annual_survey7_url(@annual_survey7)
    end

    assert_redirected_to annual_survey7s_url
  end
end
