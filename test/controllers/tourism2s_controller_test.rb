require 'test_helper'

class Tourism2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourism2 = tourism2s(:one)
  end

  test "should get index" do
    get tourism2s_url
    assert_response :success
  end

  test "should get new" do
    get new_tourism2_url
    assert_response :success
  end

  test "should create tourism2" do
    assert_difference('Tourism2.count') do
      post tourism2s_url, params: { tourism2: { Domestic_tourists: @tourism2.Domestic_tourists, Foreign_tourists: @tourism2.Foreign_tourists, Total_tourists: @tourism2.Total_tourists, Year: @tourism2.Year } }
    end

    assert_redirected_to tourism2_url(Tourism2.last)
  end

  test "should show tourism2" do
    get tourism2_url(@tourism2)
    assert_response :success
  end

  test "should get edit" do
    get edit_tourism2_url(@tourism2)
    assert_response :success
  end

  test "should update tourism2" do
    patch tourism2_url(@tourism2), params: { tourism2: { Domestic_tourists: @tourism2.Domestic_tourists, Foreign_tourists: @tourism2.Foreign_tourists, Total_tourists: @tourism2.Total_tourists, Year: @tourism2.Year } }
    assert_redirected_to tourism2_url(@tourism2)
  end

  test "should destroy tourism2" do
    assert_difference('Tourism2.count', -1) do
      delete tourism2_url(@tourism2)
    end

    assert_redirected_to tourism2s_url
  end
end
