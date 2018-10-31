require 'test_helper'

class Roads10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roads10 = roads10s(:one)
  end

  test "should get index" do
    get roads10s_url
    assert_response :success
  end

  test "should get new" do
    get new_roads10_url
    assert_response :success
  end

  test "should create roads10" do
    assert_difference('Roads10.count') do
      post roads10s_url, params: { roads10: { Districts: @roads10.Districts, MDR: @roads10.MDR, NH: @roads10.NH, Rural_Road: @roads10.Rural_Road, SH: @roads10.SH, Year: @roads10.Year } }
    end

    assert_redirected_to roads10_url(Roads10.last)
  end

  test "should show roads10" do
    get roads10_url(@roads10)
    assert_response :success
  end

  test "should get edit" do
    get edit_roads10_url(@roads10)
    assert_response :success
  end

  test "should update roads10" do
    patch roads10_url(@roads10), params: { roads10: { Districts: @roads10.Districts, MDR: @roads10.MDR, NH: @roads10.NH, Rural_Road: @roads10.Rural_Road, SH: @roads10.SH, Year: @roads10.Year } }
    assert_redirected_to roads10_url(@roads10)
  end

  test "should destroy roads10" do
    assert_difference('Roads10.count', -1) do
      delete roads10_url(@roads10)
    end

    assert_redirected_to roads10s_url
  end
end
