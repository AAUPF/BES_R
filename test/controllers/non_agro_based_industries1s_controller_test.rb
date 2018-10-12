require 'test_helper'

class NonAgroBasedIndustries1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @non_agro_based_industries1 = non_agro_based_industries1s(:one)
  end

  test "should get index" do
    get non_agro_based_industries1s_url
    assert_response :success
  end

  test "should get new" do
    get new_non_agro_based_industries1_url
    assert_response :success
  end

  test "should create non_agro_based_industries1" do
    assert_difference('NonAgroBasedIndustries1.count') do
      post non_agro_based_industries1s_url, params: { non_agro_based_industries1: { Districts: @non_agro_based_industries1.Districts, Products: @non_agro_based_industries1.Products } }
    end

    assert_redirected_to non_agro_based_industries1_url(NonAgroBasedIndustries1.last)
  end

  test "should show non_agro_based_industries1" do
    get non_agro_based_industries1_url(@non_agro_based_industries1)
    assert_response :success
  end

  test "should get edit" do
    get edit_non_agro_based_industries1_url(@non_agro_based_industries1)
    assert_response :success
  end

  test "should update non_agro_based_industries1" do
    patch non_agro_based_industries1_url(@non_agro_based_industries1), params: { non_agro_based_industries1: { Districts: @non_agro_based_industries1.Districts, Products: @non_agro_based_industries1.Products } }
    assert_redirected_to non_agro_based_industries1_url(@non_agro_based_industries1)
  end

  test "should destroy non_agro_based_industries1" do
    assert_difference('NonAgroBasedIndustries1.count', -1) do
      delete non_agro_based_industries1_url(@non_agro_based_industries1)
    end

    assert_redirected_to non_agro_based_industries1s_url
  end
end
