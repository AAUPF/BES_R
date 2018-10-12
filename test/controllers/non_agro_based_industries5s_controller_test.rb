require 'test_helper'

class NonAgroBasedIndustries5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @non_agro_based_industries5 = non_agro_based_industries5s(:one)
  end

  test "should get index" do
    get non_agro_based_industries5s_url
    assert_response :success
  end

  test "should get new" do
    get new_non_agro_based_industries5_url
    assert_response :success
  end

  test "should create non_agro_based_industries5" do
    assert_difference('NonAgroBasedIndustries5.count') do
      post non_agro_based_industries5s_url, params: { non_agro_based_industries5: { Agencies: @non_agro_based_industries5.Agencies, DIC: @non_agro_based_industries5.DIC, DIC_Percentage: @non_agro_based_industries5.DIC_Percentage, Indicators: @non_agro_based_industries5.Indicators, KVIC: @non_agro_based_industries5.KVIC, KVIC_Percentage: @non_agro_based_industries5.KVIC_Percentage, KVI_Board: @non_agro_based_industries5.KVI_Board, KVI_Board_Percentage: @non_agro_based_industries5.KVI_Board_Percentage, Total: @non_agro_based_industries5.Total, Total_Percentage: @non_agro_based_industries5.Total_Percentage, Year: @non_agro_based_industries5.Year } }
    end

    assert_redirected_to non_agro_based_industries5_url(NonAgroBasedIndustries5.last)
  end

  test "should show non_agro_based_industries5" do
    get non_agro_based_industries5_url(@non_agro_based_industries5)
    assert_response :success
  end

  test "should get edit" do
    get edit_non_agro_based_industries5_url(@non_agro_based_industries5)
    assert_response :success
  end

  test "should update non_agro_based_industries5" do
    patch non_agro_based_industries5_url(@non_agro_based_industries5), params: { non_agro_based_industries5: { Agencies: @non_agro_based_industries5.Agencies, DIC: @non_agro_based_industries5.DIC, DIC_Percentage: @non_agro_based_industries5.DIC_Percentage, Indicators: @non_agro_based_industries5.Indicators, KVIC: @non_agro_based_industries5.KVIC, KVIC_Percentage: @non_agro_based_industries5.KVIC_Percentage, KVI_Board: @non_agro_based_industries5.KVI_Board, KVI_Board_Percentage: @non_agro_based_industries5.KVI_Board_Percentage, Total: @non_agro_based_industries5.Total, Total_Percentage: @non_agro_based_industries5.Total_Percentage, Year: @non_agro_based_industries5.Year } }
    assert_redirected_to non_agro_based_industries5_url(@non_agro_based_industries5)
  end

  test "should destroy non_agro_based_industries5" do
    assert_difference('NonAgroBasedIndustries5.count', -1) do
      delete non_agro_based_industries5_url(@non_agro_based_industries5)
    end

    assert_redirected_to non_agro_based_industries5s_url
  end
end
