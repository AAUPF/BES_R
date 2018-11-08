require 'test_helper'

class Roads1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads1 = roads1s(:one)
  end

  test "should get index" do
    get roads1s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads1_url
    assert_response :success
  end

  test "should create roads1" do
    assert_difference('Roads1.count') do
      post roads1s_url, params: { roads1: { 2011-12: @roads1.2011-12, 2012-13: @roads1.2012-13, 2013-14: @roads1.2013-14, 2014-15: @roads1.2014-15, 2015-16_P: @roads1.2015-16_P, 2016-17_Q: @roads1.2016-17_Q, CAGR_2011-16: @roads1.CAGR_2011-16, Sector: @roads1.Sector } }
    end

    assert_redirected_to roads1_url(Roads1.last)
  end

  test "should show roads1" do
    get roads1_url(@roads1)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads1_url(@roads1)
    assert_response :success
  end

  test "should update roads1" do
    patch roads1_url(@roads1), params: { roads1: { 2011-12: @roads1.2011-12, 2012-13: @roads1.2012-13, 2013-14: @roads1.2013-14, 2014-15: @roads1.2014-15, 2015-16_P: @roads1.2015-16_P, 2016-17_Q: @roads1.2016-17_Q, CAGR_2011-16: @roads1.CAGR_2011-16, Sector: @roads1.Sector } }
    assert_redirected_to roads1_url(@roads1)
  end

  test "should destroy roads1" do
    assert_difference('Roads1.count', -1) do
      delete roads1_url(@roads1)
    end

    assert_redirected_to roads1s_url
  end
end
