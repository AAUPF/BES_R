require 'test_helper'

class AvailablilityOfPower2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @availablility_of_power2 = availablility_of_power2s(:one)
  end

  test "should get index" do
    get availablility_of_power2s_url
    assert_response :success
  end

  test "should get new" do
    get new_availablility_of_power2_url
    assert_response :success
  end

  test "should create availablility_of_power2" do
    assert_difference('AvailablilityOfPower2.count') do
      post availablility_of_power2s_url, params: { availablility_of_power2: { Consumption: @availablility_of_power2.Consumption, Districts: @availablility_of_power2.Districts, Year: @availablility_of_power2.Year } }
    end

    assert_redirected_to availablility_of_power2_url(AvailablilityOfPower2.last)
  end

  test "should show availablility_of_power2" do
    get availablility_of_power2_url(@availablility_of_power2)
    assert_response :success
  end

  test "should get edit" do
    get edit_availablility_of_power2_url(@availablility_of_power2)
    assert_response :success
  end

  test "should update availablility_of_power2" do
    patch availablility_of_power2_url(@availablility_of_power2), params: { availablility_of_power2: { Consumption: @availablility_of_power2.Consumption, Districts: @availablility_of_power2.Districts, Year: @availablility_of_power2.Year } }
    assert_redirected_to availablility_of_power2_url(@availablility_of_power2)
  end

  test "should destroy availablility_of_power2" do
    assert_difference('AvailablilityOfPower2.count', -1) do
      delete availablility_of_power2_url(@availablility_of_power2)
    end

    assert_redirected_to availablility_of_power2s_url
  end
end
