require 'test_helper'

class AnnualRainfallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_rainfall = annual_rainfalls(:one)
  end

  test "should get index" do
    get annual_rainfalls_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_rainfall_url
    assert_response :success
  end

  test "should create annual_rainfall" do
    assert_difference('AnnualRainfall.count') do
      post annual_rainfalls_url, params: { annual_rainfall: { April: @annual_rainfall.April, August: @annual_rainfall.August, December: @annual_rainfall.December, Districts: @annual_rainfall.Districts, February: @annual_rainfall.February, January: @annual_rainfall.January, July: @annual_rainfall.July, June: @annual_rainfall.June, March: @annual_rainfall.March, May: @annual_rainfall.May, November: @annual_rainfall.November, October: @annual_rainfall.October, September: @annual_rainfall.September, Year: @annual_rainfall.Year } }
    end

    assert_redirected_to annual_rainfall_url(AnnualRainfall.last)
  end

  test "should show annual_rainfall" do
    get annual_rainfall_url(@annual_rainfall)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_rainfall_url(@annual_rainfall)
    assert_response :success
  end

  test "should update annual_rainfall" do
    patch annual_rainfall_url(@annual_rainfall), params: { annual_rainfall: { April: @annual_rainfall.April, August: @annual_rainfall.August, December: @annual_rainfall.December, Districts: @annual_rainfall.Districts, February: @annual_rainfall.February, January: @annual_rainfall.January, July: @annual_rainfall.July, June: @annual_rainfall.June, March: @annual_rainfall.March, May: @annual_rainfall.May, November: @annual_rainfall.November, October: @annual_rainfall.October, September: @annual_rainfall.September, Year: @annual_rainfall.Year } }
    assert_redirected_to annual_rainfall_url(@annual_rainfall)
  end

  test "should destroy annual_rainfall" do
    assert_difference('AnnualRainfall.count', -1) do
      delete annual_rainfall_url(@annual_rainfall)
    end

    assert_redirected_to annual_rainfalls_url
  end
end
