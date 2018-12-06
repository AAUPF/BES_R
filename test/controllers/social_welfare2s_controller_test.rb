require 'test_helper'

class SocialWelfare2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_welfare2 = social_welfare2s(:one)
  end

  test "should get index" do
    get social_welfare2s_url
    assert_response :success
  end

  test "should get new" do
    get new_social_welfare2_url
    assert_response :success
  end

  test "should create social_welfare2" do
    assert_difference('SocialWelfare2.count') do
      post social_welfare2s_url, params: { social_welfare2: { Total_Approved_Amount: @social_welfare2.Total_Approved_Amount, Total_Expenditure: @social_welfare2.Total_Expenditure, Total_Outlay: @social_welfare2.Total_Outlay, Utilisation_percentage: @social_welfare2.Utilisation_percentage, Year: @social_welfare2.Year } }
    end

    assert_redirected_to social_welfare2_url(SocialWelfare2.last)
  end

  test "should show social_welfare2" do
    get social_welfare2_url(@social_welfare2)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_welfare2_url(@social_welfare2)
    assert_response :success
  end

  test "should update social_welfare2" do
    patch social_welfare2_url(@social_welfare2), params: { social_welfare2: { Total_Approved_Amount: @social_welfare2.Total_Approved_Amount, Total_Expenditure: @social_welfare2.Total_Expenditure, Total_Outlay: @social_welfare2.Total_Outlay, Utilisation_percentage: @social_welfare2.Utilisation_percentage, Year: @social_welfare2.Year } }
    assert_redirected_to social_welfare2_url(@social_welfare2)
  end

  test "should destroy social_welfare2" do
    assert_difference('SocialWelfare2.count', -1) do
      delete social_welfare2_url(@social_welfare2)
    end

    assert_redirected_to social_welfare2s_url
  end
end
