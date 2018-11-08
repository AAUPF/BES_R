require 'test_helper'

class Roads3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads3 = roads3s(:one)
  end

  test "should get index" do
    get roads3s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads3_url
    assert_response :success
  end

  test "should create roads3" do
    assert_difference('Roads3.count') do
      post roads3s_url, params: { roads3: { Indicator: @roads3.Indicator, NH: @roads3.NH, Other: @roads3.Other, SH: @roads3.SH, State: @roads3.State, Total: @roads3.Total } }
    end

    assert_redirected_to roads3_url(Roads3.last)
  end

  test "should show roads3" do
    get roads3_url(@roads3)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads3_url(@roads3)
    assert_response :success
  end

  test "should update roads3" do
    patch roads3_url(@roads3), params: { roads3: { Indicator: @roads3.Indicator, NH: @roads3.NH, Other: @roads3.Other, SH: @roads3.SH, State: @roads3.State, Total: @roads3.Total } }
    assert_redirected_to roads3_url(@roads3)
  end

  test "should destroy roads3" do
    assert_difference('Roads3.count', -1) do
      delete roads3_url(@roads3)
    end

    assert_redirected_to roads3s_url
  end
end
