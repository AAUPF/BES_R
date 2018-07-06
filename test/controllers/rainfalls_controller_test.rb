require 'test_helper'

class RainfallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rainfall = rainfalls(:one)
  end

  test "should get index" do
    get rainfalls_url
    assert_response :success
  end

  test "should get new" do
    get new_rainfall_url
    assert_response :success
  end

  test "should create rainfall" do
    assert_difference('Rainfall.count') do
      post rainfalls_url, params: { rainfall: { Districts: @rainfall.Districts, HotWeatherRain_2016: @rainfall.HotWeatherRain_2016, HotWeatherRain_2017: @rainfall.HotWeatherRain_2017, NorthWestMonsoonRain_2016: @rainfall.NorthWestMonsoonRain_2016, SouthWestMonsoonRain_2016: @rainfall.SouthWestMonsoonRain_2016, SouthWestMonsoonRain_2017: @rainfall.SouthWestMonsoonRain_2017, TotalRainfall_2016: @rainfall.TotalRainfall_2016, Total_2017: @rainfall.Total_2017, WinterRain_2016: @rainfall.WinterRain_2016, WinterRain_2017: @rainfall.WinterRain_2017 } }
    end

    assert_redirected_to rainfall_url(Rainfall.last)
  end

  test "should show rainfall" do
    get rainfall_url(@rainfall)
    assert_response :success
  end

  test "should get edit" do
    get edit_rainfall_url(@rainfall)
    assert_response :success
  end

  test "should update rainfall" do
    patch rainfall_url(@rainfall), params: { rainfall: { Districts: @rainfall.Districts, HotWeatherRain_2016: @rainfall.HotWeatherRain_2016, HotWeatherRain_2017: @rainfall.HotWeatherRain_2017, NorthWestMonsoonRain_2016: @rainfall.NorthWestMonsoonRain_2016, SouthWestMonsoonRain_2016: @rainfall.SouthWestMonsoonRain_2016, SouthWestMonsoonRain_2017: @rainfall.SouthWestMonsoonRain_2017, TotalRainfall_2016: @rainfall.TotalRainfall_2016, Total_2017: @rainfall.Total_2017, WinterRain_2016: @rainfall.WinterRain_2016, WinterRain_2017: @rainfall.WinterRain_2017 } }
    assert_redirected_to rainfall_url(@rainfall)
  end

  test "should destroy rainfall" do
    assert_difference('Rainfall.count', -1) do
      delete rainfall_url(@rainfall)
    end

    assert_redirected_to rainfalls_url
  end
end
