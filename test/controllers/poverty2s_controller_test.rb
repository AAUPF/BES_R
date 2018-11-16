require 'test_helper'

class Poverty2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poverty2 = poverty2s(:one)
  end

  test "should get index" do
    get poverty2s_url
    assert_response :success
  end

  test "should get new" do
    get new_poverty2_url
    assert_response :success
  end

  test "should create poverty2" do
    assert_difference('Poverty2.count') do
      post poverty2s_url, params: { poverty2: { Population_below_poverty_line_in_Percentages: @poverty2.Population_below_poverty_line_in_Percentages, Rural_poverty: @poverty2.Rural_poverty, Total_poverty: @poverty2.Total_poverty, Urban_poverty: @poverty2.Urban_poverty } }
    end

    assert_redirected_to poverty2_url(Poverty2.last)
  end

  test "should show poverty2" do
    get poverty2_url(@poverty2)
    assert_response :success
  end

  test "should get edit" do
    get edit_poverty2_url(@poverty2)
    assert_response :success
  end

  test "should update poverty2" do
    patch poverty2_url(@poverty2), params: { poverty2: { Population_below_poverty_line_in_Percentages: @poverty2.Population_below_poverty_line_in_Percentages, Rural_poverty: @poverty2.Rural_poverty, Total_poverty: @poverty2.Total_poverty, Urban_poverty: @poverty2.Urban_poverty } }
    assert_redirected_to poverty2_url(@poverty2)
  end

  test "should destroy poverty2" do
    assert_difference('Poverty2.count', -1) do
      delete poverty2_url(@poverty2)
    end

    assert_redirected_to poverty2s_url
  end
end
