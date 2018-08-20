require 'test_helper'

class TaxGsdpRatiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_gsdp_ratio = tax_gsdp_ratios(:one)
  end

  test "should get index" do
    get tax_gsdp_ratios_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_gsdp_ratio_url
    assert_response :success
  end

  test "should create tax_gsdp_ratio" do
    assert_difference('TaxGsdpRatio.count') do
      post tax_gsdp_ratios_url, params: { tax_gsdp_ratio: { GSDP: @tax_gsdp_ratio.GSDP, Ratio_of_SOT_and_GSDP: @tax_gsdp_ratio.Ratio_of_SOT_and_GSDP, Ratio_of_SOT_and_RR: @tax_gsdp_ratio.Ratio_of_SOT_and_RR, Ratio_of_Total_Revenue_and_GSDP: @tax_gsdp_ratio.Ratio_of_Total_Revenue_and_GSDP, Revenue_Receipts: @tax_gsdp_ratio.Revenue_Receipts, State: @tax_gsdp_ratio.State, States_Own_Tax: @tax_gsdp_ratio.States_Own_Tax } }
    end

    assert_redirected_to tax_gsdp_ratio_url(TaxGsdpRatio.last)
  end

  test "should show tax_gsdp_ratio" do
    get tax_gsdp_ratio_url(@tax_gsdp_ratio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_gsdp_ratio_url(@tax_gsdp_ratio)
    assert_response :success
  end

  test "should update tax_gsdp_ratio" do
    patch tax_gsdp_ratio_url(@tax_gsdp_ratio), params: { tax_gsdp_ratio: { GSDP: @tax_gsdp_ratio.GSDP, Ratio_of_SOT_and_GSDP: @tax_gsdp_ratio.Ratio_of_SOT_and_GSDP, Ratio_of_SOT_and_RR: @tax_gsdp_ratio.Ratio_of_SOT_and_RR, Ratio_of_Total_Revenue_and_GSDP: @tax_gsdp_ratio.Ratio_of_Total_Revenue_and_GSDP, Revenue_Receipts: @tax_gsdp_ratio.Revenue_Receipts, State: @tax_gsdp_ratio.State, States_Own_Tax: @tax_gsdp_ratio.States_Own_Tax } }
    assert_redirected_to tax_gsdp_ratio_url(@tax_gsdp_ratio)
  end

  test "should destroy tax_gsdp_ratio" do
    assert_difference('TaxGsdpRatio.count', -1) do
      delete tax_gsdp_ratio_url(@tax_gsdp_ratio)
    end

    assert_redirected_to tax_gsdp_ratios_url
  end
end
