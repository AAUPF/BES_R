require 'test_helper'

class Poverty1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poverty1 = poverty1s(:one)
  end

  test "should get index" do
    get poverty1s_url
    assert_response :success
  end

  test "should get new" do
    get new_poverty1_url
    assert_response :success
  end

  test "should create poverty1" do
    assert_difference('Poverty1.count') do
      post poverty1s_url, params: { poverty1: { 1993-94: @poverty1.1993-94, 1999-00: @poverty1.1999-00, 2004-05: @poverty1.2004-05, 2011-12: @poverty1.2011-12, Indicator: @poverty1.Indicator, Poverty_Line_2004_05: @poverty1.Poverty_Line_2004_05, Poverty_Line_2011_12: @poverty1.Poverty_Line_2011_12, Reduction_in_Poverty_between _2004_05_and_2011_12: @poverty1.Reduction_in_Poverty_between _2004_05_and_2011_12, Sector: @poverty1.Sector } }
    end

    assert_redirected_to poverty1_url(Poverty1.last)
  end

  test "should show poverty1" do
    get poverty1_url(@poverty1)
    assert_response :success
  end

  test "should get edit" do
    get edit_poverty1_url(@poverty1)
    assert_response :success
  end

  test "should update poverty1" do
    patch poverty1_url(@poverty1), params: { poverty1: { 1993-94: @poverty1.1993-94, 1999-00: @poverty1.1999-00, 2004-05: @poverty1.2004-05, 2011-12: @poverty1.2011-12, Indicator: @poverty1.Indicator, Poverty_Line_2004_05: @poverty1.Poverty_Line_2004_05, Poverty_Line_2011_12: @poverty1.Poverty_Line_2011_12, Reduction_in_Poverty_between _2004_05_and_2011_12: @poverty1.Reduction_in_Poverty_between _2004_05_and_2011_12, Sector: @poverty1.Sector } }
    assert_redirected_to poverty1_url(@poverty1)
  end

  test "should destroy poverty1" do
    assert_difference('Poverty1.count', -1) do
      delete poverty1_url(@poverty1)
    end

    assert_redirected_to poverty1s_url
  end
end
