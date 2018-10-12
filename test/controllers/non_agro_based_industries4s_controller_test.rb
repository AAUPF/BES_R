require 'test_helper'

class NonAgroBasedIndustries4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @non_agro_based_industries4 = non_agro_based_industries4s(:one)
  end

  test "should get index" do
    get non_agro_based_industries4s_url
    assert_response :success
  end

  test "should get new" do
    get new_non_agro_based_industries4_url
    assert_response :success
  end

  test "should create non_agro_based_industries4" do
    assert_difference('NonAgroBasedIndustries4.count') do
      post non_agro_based_industries4s_url, params: { non_agro_based_industries4: { Castor: @non_agro_based_industries4.Castor, Mulberry: @non_agro_based_industries4.Mulberry, Sericulture_Sector: @non_agro_based_industries4.Sericulture_Sector, Tasar: @non_agro_based_industries4.Tasar, Year: @non_agro_based_industries4.Year } }
    end

    assert_redirected_to non_agro_based_industries4_url(NonAgroBasedIndustries4.last)
  end

  test "should show non_agro_based_industries4" do
    get non_agro_based_industries4_url(@non_agro_based_industries4)
    assert_response :success
  end

  test "should get edit" do
    get edit_non_agro_based_industries4_url(@non_agro_based_industries4)
    assert_response :success
  end

  test "should update non_agro_based_industries4" do
    patch non_agro_based_industries4_url(@non_agro_based_industries4), params: { non_agro_based_industries4: { Castor: @non_agro_based_industries4.Castor, Mulberry: @non_agro_based_industries4.Mulberry, Sericulture_Sector: @non_agro_based_industries4.Sericulture_Sector, Tasar: @non_agro_based_industries4.Tasar, Year: @non_agro_based_industries4.Year } }
    assert_redirected_to non_agro_based_industries4_url(@non_agro_based_industries4)
  end

  test "should destroy non_agro_based_industries4" do
    assert_difference('NonAgroBasedIndustries4.count', -1) do
      delete non_agro_based_industries4_url(@non_agro_based_industries4)
    end

    assert_redirected_to non_agro_based_industries4s_url
  end
end
