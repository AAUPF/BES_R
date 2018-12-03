require 'test_helper'

class SocialWelfaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_welfare = social_welfares(:one)
  end

  test "should get index" do
    get social_welfares_url
    assert_response :success
  end

  test "should get new" do
    get new_social_welfare_url
    assert_response :success
  end

  test "should create social_welfare" do
    assert_difference('SocialWelfare.count') do
      post social_welfares_url, params: { social_welfare: { Actual_Expenditure: @social_welfare.Actual_Expenditure, Budget: @social_welfare.Budget, Sector: @social_welfare.Sector, Utilisation_Percentage: @social_welfare.Utilisation_Percentage, Year: @social_welfare.Year } }
    end

    assert_redirected_to social_welfare_url(SocialWelfare.last)
  end

  test "should show social_welfare" do
    get social_welfare_url(@social_welfare)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_welfare_url(@social_welfare)
    assert_response :success
  end

  test "should update social_welfare" do
    patch social_welfare_url(@social_welfare), params: { social_welfare: { Actual_Expenditure: @social_welfare.Actual_Expenditure, Budget: @social_welfare.Budget, Sector: @social_welfare.Sector, Utilisation_Percentage: @social_welfare.Utilisation_Percentage, Year: @social_welfare.Year } }
    assert_redirected_to social_welfare_url(@social_welfare)
  end

  test "should destroy social_welfare" do
    assert_difference('SocialWelfare.count', -1) do
      delete social_welfare_url(@social_welfare)
    end

    assert_redirected_to social_welfares_url
  end
end
