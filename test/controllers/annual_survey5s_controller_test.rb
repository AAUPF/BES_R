require 'test_helper'

class AnnualSurvey5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey5 = annual_survey5s(:one)
  end

  test "should get index" do
    get annual_survey5s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey5_url
    assert_response :success
  end

  test "should create annual_survey5" do
    assert_difference('AnnualSurvey5.count') do
      post annual_survey5s_url, params: { annual_survey5: { Bihar: @annual_survey5.Bihar, Characteristics: @annual_survey5.Characteristics, India: @annual_survey5.India, Year: @annual_survey5.Year } }
    end

    assert_redirected_to annual_survey5_url(AnnualSurvey5.last)
  end

  test "should show annual_survey5" do
    get annual_survey5_url(@annual_survey5)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey5_url(@annual_survey5)
    assert_response :success
  end

  test "should update annual_survey5" do
    patch annual_survey5_url(@annual_survey5), params: { annual_survey5: { Bihar: @annual_survey5.Bihar, Characteristics: @annual_survey5.Characteristics, India: @annual_survey5.India, Year: @annual_survey5.Year } }
    assert_redirected_to annual_survey5_url(@annual_survey5)
  end

  test "should destroy annual_survey5" do
    assert_difference('AnnualSurvey5.count', -1) do
      delete annual_survey5_url(@annual_survey5)
    end

    assert_redirected_to annual_survey5s_url
  end
end
