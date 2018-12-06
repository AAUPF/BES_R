require 'test_helper'

class SocialWelfare3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_welfare3 = social_welfare3s(:one)
  end

  test "should get index" do
    get social_welfare3s_url
    assert_response :success
  end

  test "should get new" do
    get new_social_welfare3_url
    assert_response :success
  end

  test "should create social_welfare3" do
    assert_difference('SocialWelfare3.count') do
      post social_welfare3s_url, params: { social_welfare3: { Fund_Allocation: @social_welfare3.Fund_Allocation, Indicator: @social_welfare3.Indicator, Number_of_Beneficiaries: @social_welfare3.Number_of_Beneficiaries, Year: @social_welfare3.Year } }
    end

    assert_redirected_to social_welfare3_url(SocialWelfare3.last)
  end

  test "should show social_welfare3" do
    get social_welfare3_url(@social_welfare3)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_welfare3_url(@social_welfare3)
    assert_response :success
  end

  test "should update social_welfare3" do
    patch social_welfare3_url(@social_welfare3), params: { social_welfare3: { Fund_Allocation: @social_welfare3.Fund_Allocation, Indicator: @social_welfare3.Indicator, Number_of_Beneficiaries: @social_welfare3.Number_of_Beneficiaries, Year: @social_welfare3.Year } }
    assert_redirected_to social_welfare3_url(@social_welfare3)
  end

  test "should destroy social_welfare3" do
    assert_difference('SocialWelfare3.count', -1) do
      delete social_welfare3_url(@social_welfare3)
    end

    assert_redirected_to social_welfare3s_url
  end
end
