require 'test_helper'

class RegionalDisparitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regional_disparity = regional_disparities(:one)
  end

  test "should get index" do
    get regional_disparities_url
    assert_response :success
  end

  test "should get new" do
    get new_regional_disparity_url
    assert_response :success
  end

  test "should create regional_disparity" do
    assert_difference('RegionalDisparity.count') do
      post regional_disparities_url, params: { regional_disparity: { Bottom_3_District: @regional_disparity.Bottom_3_District, Criteria: @regional_disparity.Criteria, Top_3_District: @regional_disparity.Top_3_District } }
    end

    assert_redirected_to regional_disparity_url(RegionalDisparity.last)
  end

  test "should show regional_disparity" do
    get regional_disparity_url(@regional_disparity)
    assert_response :success
  end

  test "should get edit" do
    get edit_regional_disparity_url(@regional_disparity)
    assert_response :success
  end

  test "should update regional_disparity" do
    patch regional_disparity_url(@regional_disparity), params: { regional_disparity: { Bottom_3_District: @regional_disparity.Bottom_3_District, Criteria: @regional_disparity.Criteria, Top_3_District: @regional_disparity.Top_3_District } }
    assert_redirected_to regional_disparity_url(@regional_disparity)
  end

  test "should destroy regional_disparity" do
    assert_difference('RegionalDisparity.count', -1) do
      delete regional_disparity_url(@regional_disparity)
    end

    assert_redirected_to regional_disparities_url
  end
end
