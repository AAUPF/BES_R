require 'test_helper'

class AvailablilityOfPower1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @availablility_of_power1 = availablility_of_power1s(:one)
  end

  test "should get index" do
    get availablility_of_power1s_url
    assert_response :success
  end

  test "should get new" do
    get new_availablility_of_power1_url
    assert_response :success
  end

  test "should create availablility_of_power1" do
    assert_difference('AvailablilityOfPower1.count') do
      post availablility_of_power1s_url, params: { availablility_of_power1: { 2011-12: @availablility_of_power1.2011-12, 2012-13: @availablility_of_power1.2012-13, 2013-14: @availablility_of_power1.2013-14, 2014-15: @availablility_of_power1.2014-15, 2015-16: @availablility_of_power1.2015-16, 2016-17: @availablility_of_power1.2016-17, Sector: @availablility_of_power1.Sector } }
    end

    assert_redirected_to availablility_of_power1_url(AvailablilityOfPower1.last)
  end

  test "should show availablility_of_power1" do
    get availablility_of_power1_url(@availablility_of_power1)
    assert_response :success
  end

  test "should get edit" do
    get edit_availablility_of_power1_url(@availablility_of_power1)
    assert_response :success
  end

  test "should update availablility_of_power1" do
    patch availablility_of_power1_url(@availablility_of_power1), params: { availablility_of_power1: { 2011-12: @availablility_of_power1.2011-12, 2012-13: @availablility_of_power1.2012-13, 2013-14: @availablility_of_power1.2013-14, 2014-15: @availablility_of_power1.2014-15, 2015-16: @availablility_of_power1.2015-16, 2016-17: @availablility_of_power1.2016-17, Sector: @availablility_of_power1.Sector } }
    assert_redirected_to availablility_of_power1_url(@availablility_of_power1)
  end

  test "should destroy availablility_of_power1" do
    assert_difference('AvailablilityOfPower1.count', -1) do
      delete availablility_of_power1_url(@availablility_of_power1)
    end

    assert_redirected_to availablility_of_power1s_url
  end
end
