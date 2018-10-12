require 'test_helper'

class AnnualSurvey4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey4 = annual_survey4s(:one)
  end

  test "should get index" do
    get annual_survey4s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey4_url
    assert_response :success
  end

  test "should create annual_survey4" do
    assert_difference('AnnualSurvey4.count') do
      post annual_survey4s_url, params: { annual_survey4: { Bihar: @annual_survey4.Bihar, India: @annual_survey4.India, Indicator: @annual_survey4.Indicator, Year: @annual_survey4.Year } }
    end

    assert_redirected_to annual_survey4_url(AnnualSurvey4.last)
  end

  test "should show annual_survey4" do
    get annual_survey4_url(@annual_survey4)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey4_url(@annual_survey4)
    assert_response :success
  end

  test "should update annual_survey4" do
    patch annual_survey4_url(@annual_survey4), params: { annual_survey4: { Bihar: @annual_survey4.Bihar, India: @annual_survey4.India, Indicator: @annual_survey4.Indicator, Year: @annual_survey4.Year } }
    assert_redirected_to annual_survey4_url(@annual_survey4)
  end

  test "should destroy annual_survey4" do
    assert_difference('AnnualSurvey4.count', -1) do
      delete annual_survey4_url(@annual_survey4)
    end

    assert_redirected_to annual_survey4s_url
  end
end
