require 'test_helper'

class Tourism3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tourism3 = tourism3s(:one)
  end

  test "should get index" do
    get tourism3s_url
    assert_response :success
  end

  test "should get new" do
    get new_tourism3_url
    assert_response :success
  end

  test "should create tourism3" do
    assert_difference('Tourism3.count') do
      post tourism3s_url, params: { tourism3: { 2012: @tourism3.2012, 2013: @tourism3.2013, 2014: @tourism3.2014, 2015: @tourism3.2015, 2016: @tourism3.2016, 2017: @tourism3.2017, Sector: @tourism3.Sector, Tourist: @tourism3.Tourist } }
    end

    assert_redirected_to tourism3_url(Tourism3.last)
  end

  test "should show tourism3" do
    get tourism3_url(@tourism3)
    assert_response :success
  end

  test "should get edit" do
    get edit_tourism3_url(@tourism3)
    assert_response :success
  end

  test "should update tourism3" do
    patch tourism3_url(@tourism3), params: { tourism3: { 2012: @tourism3.2012, 2013: @tourism3.2013, 2014: @tourism3.2014, 2015: @tourism3.2015, 2016: @tourism3.2016, 2017: @tourism3.2017, Sector: @tourism3.Sector, Tourist: @tourism3.Tourist } }
    assert_redirected_to tourism3_url(@tourism3)
  end

  test "should destroy tourism3" do
    assert_difference('Tourism3.count', -1) do
      delete tourism3_url(@tourism3)
    end

    assert_redirected_to tourism3s_url
  end
end
