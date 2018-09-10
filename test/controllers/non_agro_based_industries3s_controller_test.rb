require 'test_helper'

class NonAgroBasedIndustries3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @non_agro_based_industries3 = non_agro_based_industries3s(:one)
  end

  test "should get index" do
    get non_agro_based_industries3s_url
    assert_response :success
  end

  test "should get new" do
    get new_non_agro_based_industries3_url
    assert_response :success
  end

  test "should create non_agro_based_industries3" do
    assert_difference('NonAgroBasedIndustries3.count') do
      post non_agro_based_industries3s_url, params: { non_agro_based_industries3: { Achievement: @non_agro_based_industries3.Achievement, Achievement_Percentage: @non_agro_based_industries3.Achievement_Percentage, Target: @non_agro_based_industries3.Target, Year: @non_agro_based_industries3.Year } }
    end

    assert_redirected_to non_agro_based_industries3_url(NonAgroBasedIndustries3.last)
  end

  test "should show non_agro_based_industries3" do
    get non_agro_based_industries3_url(@non_agro_based_industries3)
    assert_response :success
  end

  test "should get edit" do
    get edit_non_agro_based_industries3_url(@non_agro_based_industries3)
    assert_response :success
  end

  test "should update non_agro_based_industries3" do
    patch non_agro_based_industries3_url(@non_agro_based_industries3), params: { non_agro_based_industries3: { Achievement: @non_agro_based_industries3.Achievement, Achievement_Percentage: @non_agro_based_industries3.Achievement_Percentage, Target: @non_agro_based_industries3.Target, Year: @non_agro_based_industries3.Year } }
    assert_redirected_to non_agro_based_industries3_url(@non_agro_based_industries3)
  end

  test "should destroy non_agro_based_industries3" do
    assert_difference('NonAgroBasedIndustries3.count', -1) do
      delete non_agro_based_industries3_url(@non_agro_based_industries3)
    end

    assert_redirected_to non_agro_based_industries3s_url
  end
end
