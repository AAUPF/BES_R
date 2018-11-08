require 'test_helper'

class AgroBasedIndustries6sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agro_based_industries6 = agro_based_industries6s(:one)
  end

  test "should get index" do
    get agro_based_industries6s_url
    assert_response :success
  end

  test "should get new" do
    get new_agro_based_industries6_url
    assert_response :success
  end

  test "should create agro_based_industries6" do
    assert_difference('AgroBasedIndustries6.count') do
      post agro_based_industries6s_url, params: { agro_based_industries6: { Bihar: @agro_based_industries6.Bihar, Bihar_Percentage_Share: @agro_based_industries6.Bihar_Percentage_Share, India: @agro_based_industries6.India, Indicator: @agro_based_industries6.Indicator, Indicator1: @agro_based_industries6.Indicator1, Industrial_Group: @agro_based_industries6.Industrial_Group } }
    end

    assert_redirected_to agro_based_industries6_url(AgroBasedIndustries6.last)
  end

  test "should show agro_based_industries6" do
    get agro_based_industries6_url(@agro_based_industries6)
    assert_response :success
  end

  test "should get edit" do
    get edit_agro_based_industries6_url(@agro_based_industries6)
    assert_response :success
  end

  test "should update agro_based_industries6" do
    patch agro_based_industries6_url(@agro_based_industries6), params: { agro_based_industries6: { Bihar: @agro_based_industries6.Bihar, Bihar_Percentage_Share: @agro_based_industries6.Bihar_Percentage_Share, India: @agro_based_industries6.India, Indicator: @agro_based_industries6.Indicator, Indicator1: @agro_based_industries6.Indicator1, Industrial_Group: @agro_based_industries6.Industrial_Group } }
    assert_redirected_to agro_based_industries6_url(@agro_based_industries6)
  end

  test "should destroy agro_based_industries6" do
    assert_difference('AgroBasedIndustries6.count', -1) do
      delete agro_based_industries6_url(@agro_based_industries6)
    end

    assert_redirected_to agro_based_industries6s_url
  end
end
