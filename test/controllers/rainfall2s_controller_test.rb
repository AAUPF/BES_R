require 'test_helper'

class Rainfall2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rainfall2 = rainfall2s(:one)
  end

  test "should get index" do
    get rainfall2s_url
    assert_response :success
  end

  test "should get new" do
    get new_rainfall2_url
    assert_response :success
  end

  test "should create rainfall2" do
    assert_difference('Rainfall2.count') do
      post rainfall2s_url, params: { rainfall2: { Districts: @rainfall2.Districts, Hot_Weather_Rain: @rainfall2.Hot_Weather_Rain, North_West_Monsoon: @rainfall2.North_West_Monsoon, South_West_Monsoon: @rainfall2.South_West_Monsoon, Total: @rainfall2.Total, Winter_Rain: @rainfall2.Winter_Rain, Year: @rainfall2.Year } }
    end

    assert_redirected_to rainfall2_url(Rainfall2.last)
  end

  test "should show rainfall2" do
    get rainfall2_url(@rainfall2)
    assert_response :success
  end

  test "should get edit" do
    get edit_rainfall2_url(@rainfall2)
    assert_response :success
  end

  test "should update rainfall2" do
    patch rainfall2_url(@rainfall2), params: { rainfall2: { Districts: @rainfall2.Districts, Hot_Weather_Rain: @rainfall2.Hot_Weather_Rain, North_West_Monsoon: @rainfall2.North_West_Monsoon, South_West_Monsoon: @rainfall2.South_West_Monsoon, Total: @rainfall2.Total, Winter_Rain: @rainfall2.Winter_Rain, Year: @rainfall2.Year } }
    assert_redirected_to rainfall2_url(@rainfall2)
  end

  test "should destroy rainfall2" do
    assert_difference('Rainfall2.count', -1) do
      delete rainfall2_url(@rainfall2)
    end

    assert_redirected_to rainfall2s_url
  end
end
