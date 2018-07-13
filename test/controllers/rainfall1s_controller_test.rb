require 'test_helper'

class Rainfall1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rainfall1 = rainfall1s(:one)
  end

  test "should get index" do
    get rainfall1s_url
    assert_response :success
  end

  test "should get new" do
    get new_rainfall1_url
    assert_response :success
  end

  test "should create rainfall1" do
    assert_difference('Rainfall1.count') do
      post rainfall1s_url, params: { rainfall1: { Hot_Weather_Rain: @rainfall1.Hot_Weather_Rain, Northwest_Monsoon: @rainfall1.Northwest_Monsoon, Southwest_Monsoon: @rainfall1.Southwest_Monsoon, Total: @rainfall1.Total, Winter_Rain: @rainfall1.Winter_Rain, Year: @rainfall1.Year } }
    end

    assert_redirected_to rainfall1_url(Rainfall1.last)
  end

  test "should show rainfall1" do
    get rainfall1_url(@rainfall1)
    assert_response :success
  end

  test "should get edit" do
    get edit_rainfall1_url(@rainfall1)
    assert_response :success
  end

  test "should update rainfall1" do
    patch rainfall1_url(@rainfall1), params: { rainfall1: { Hot_Weather_Rain: @rainfall1.Hot_Weather_Rain, Northwest_Monsoon: @rainfall1.Northwest_Monsoon, Southwest_Monsoon: @rainfall1.Southwest_Monsoon, Total: @rainfall1.Total, Winter_Rain: @rainfall1.Winter_Rain, Year: @rainfall1.Year } }
    assert_redirected_to rainfall1_url(@rainfall1)
  end

  test "should destroy rainfall1" do
    assert_difference('Rainfall1.count', -1) do
      delete rainfall1_url(@rainfall1)
    end

    assert_redirected_to rainfall1s_url
  end
end
