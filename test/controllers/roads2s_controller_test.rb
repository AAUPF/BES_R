require 'test_helper'

class Roads2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads2 = roads2s(:one)
  end

  test "should get index" do
    get roads2s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads2_url
    assert_response :success
  end

  test "should create roads2" do
    assert_difference('Roads2.count') do
      post roads2s_url, params: { roads2: { 2007-08: @roads2.2007-08, 2011-12: @roads2.2011-12, 2012-13: @roads2.2012-13, 2013-14: @roads2.2013-14, 2014-15: @roads2.2014-15, 2015-16: @roads2.2015-16, 2016-17: @roads2.2016-17, 2017-18: @roads2.2017-18, CAGR (2014-18): @roads2.CAGR (2014-18), Indicator: @roads2.Indicator, Sector: @roads2.Sector } }
    end

    assert_redirected_to roads2_url(Roads2.last)
  end

  test "should show roads2" do
    get roads2_url(@roads2)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads2_url(@roads2)
    assert_response :success
  end

  test "should update roads2" do
    patch roads2_url(@roads2), params: { roads2: { 2007-08: @roads2.2007-08, 2011-12: @roads2.2011-12, 2012-13: @roads2.2012-13, 2013-14: @roads2.2013-14, 2014-15: @roads2.2014-15, 2015-16: @roads2.2015-16, 2016-17: @roads2.2016-17, 2017-18: @roads2.2017-18, CAGR (2014-18): @roads2.CAGR (2014-18), Indicator: @roads2.Indicator, Sector: @roads2.Sector } }
    assert_redirected_to roads2_url(@roads2)
  end

  test "should destroy roads2" do
    assert_difference('Roads2.count', -1) do
      delete roads2_url(@roads2)
    end

    assert_redirected_to roads2s_url
  end
end
