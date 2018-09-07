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
      post inflation_rates_url, params: { inflation_rate: { Inflation_Rate_in_percentage: @inflation_rate.Inflation_Rate_in_percentage, Oct_16_Index_Final: @inflation_rate.Oct_16_Index_Final, Oct_17_Index_Provisional: @inflation_rate.Oct_17_Index_Provisional, Sector: @inflation_rate.Sector, State: @inflation_rate.State } }
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
    patch inflation_rate_url(@inflation_rate), params: { inflation_rate: { Inflation_Rate_in_percentage: @inflation_rate.Inflation_Rate_in_percentage, Oct_16_Index_Final: @inflation_rate.Oct_16_Index_Final, Oct_17_Index_Provisional: @inflation_rate.Oct_17_Index_Provisional, Sector: @inflation_rate.Sector, State: @inflation_rate.State } }
    assert_redirected_to inflation_rate_url(@inflation_rate)
  end

  test "should destroy inflation_rate" do
    assert_difference('InflationRate.count', -1) do
      delete inflation_rate_url(@inflation_rate)
    end

    assert_redirected_to inflation_rates_url
  end
end
