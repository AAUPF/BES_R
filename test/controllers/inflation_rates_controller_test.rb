require 'test_helper'

class InflationRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inflation_rate = inflation_rates(:one)
  end

  test "should get index" do
    get inflation_rates_url
    assert_response :success
  end

  test "should get new" do
    get new_inflation_rate_url
    assert_response :success
  end

  test "should create inflation_rate" do
    assert_difference('InflationRate.count') do
      post inflation_rates_url, params: { inflation_rate: { Combined_Inflation_Rate_in_percentage: @inflation_rate.Combined_Inflation_Rate_in_percentage, Combined_Oct_16_Index_Final: @inflation_rate.Combined_Oct_16_Index_Final, Combined_Oct_17_Index_Provisional: @inflation_rate.Combined_Oct_17_Index_Provisional, Rural_Inflation_Rate_in_percentage: @inflation_rate.Rural_Inflation_Rate_in_percentage, Rural_Oct_16_Index_Final: @inflation_rate.Rural_Oct_16_Index_Final, Rural_Oct_17_Index_Provisional: @inflation_rate.Rural_Oct_17_Index_Provisional, State: @inflation_rate.State, Urban_Inflation_Rate_in_percentage: @inflation_rate.Urban_Inflation_Rate_in_percentage, Urban_Oct_16_Index_Final: @inflation_rate.Urban_Oct_16_Index_Final, Urban_Oct_17_Index_Provisional: @inflation_rate.Urban_Oct_17_Index_Provisional } }
    end

    assert_redirected_to inflation_rate_url(InflationRate.last)
  end

  test "should show inflation_rate" do
    get inflation_rate_url(@inflation_rate)
    assert_response :success
  end

  test "should get edit" do
    get edit_inflation_rate_url(@inflation_rate)
    assert_response :success
  end

  test "should update inflation_rate" do
    patch inflation_rate_url(@inflation_rate), params: { inflation_rate: { Combined_Inflation_Rate_in_percentage: @inflation_rate.Combined_Inflation_Rate_in_percentage, Combined_Oct_16_Index_Final: @inflation_rate.Combined_Oct_16_Index_Final, Combined_Oct_17_Index_Provisional: @inflation_rate.Combined_Oct_17_Index_Provisional, Rural_Inflation_Rate_in_percentage: @inflation_rate.Rural_Inflation_Rate_in_percentage, Rural_Oct_16_Index_Final: @inflation_rate.Rural_Oct_16_Index_Final, Rural_Oct_17_Index_Provisional: @inflation_rate.Rural_Oct_17_Index_Provisional, State: @inflation_rate.State, Urban_Inflation_Rate_in_percentage: @inflation_rate.Urban_Inflation_Rate_in_percentage, Urban_Oct_16_Index_Final: @inflation_rate.Urban_Oct_16_Index_Final, Urban_Oct_17_Index_Provisional: @inflation_rate.Urban_Oct_17_Index_Provisional } }
    assert_redirected_to inflation_rate_url(@inflation_rate)
  end

  test "should destroy inflation_rate" do
    assert_difference('InflationRate.count', -1) do
      delete inflation_rate_url(@inflation_rate)
    end

    assert_redirected_to inflation_rates_url
  end
end
