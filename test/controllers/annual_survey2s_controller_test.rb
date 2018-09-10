require 'test_helper'

class AnnualSurvey2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_survey2 = annual_survey2s(:one)
  end

  test "should get index" do
    get annual_survey2s_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_survey2_url
    assert_response :success
  end

  test "should create annual_survey2" do
    assert_difference('AnnualSurvey2.count') do
      post annual_survey2s_url, params: { annual_survey2: { Cotribution: @annual_survey2.Cotribution, State: @annual_survey2.State, Year: @annual_survey2.Year } }
    end

    assert_redirected_to annual_survey2_url(AnnualSurvey2.last)
  end

  test "should show annual_survey2" do
    get annual_survey2_url(@annual_survey2)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_survey2_url(@annual_survey2)
    assert_response :success
  end

  test "should update annual_survey2" do
    patch annual_survey2_url(@annual_survey2), params: { annual_survey2: { Cotribution: @annual_survey2.Cotribution, State: @annual_survey2.State, Year: @annual_survey2.Year } }
    assert_redirected_to annual_survey2_url(@annual_survey2)
  end

  test "should destroy annual_survey2" do
    assert_difference('AnnualSurvey2.count', -1) do
      delete annual_survey2_url(@annual_survey2)
    end

    assert_redirected_to annual_survey2s_url
  end
end
