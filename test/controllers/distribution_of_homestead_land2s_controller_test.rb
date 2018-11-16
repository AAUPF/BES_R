require 'test_helper'

class DistributionOfHomesteadLand2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribution_of_homestead_land2 = distribution_of_homestead_land2s(:one)
  end

  test "should get index" do
    get distribution_of_homestead_land2s_url
    assert_response :success
  end

  test "should get new" do
    get new_distribution_of_homestead_land2_url
    assert_response :success
  end

  test "should create distribution_of_homestead_land2" do
    assert_difference('DistributionOfHomesteadLand2.count') do
      post distribution_of_homestead_land2s_url, params: { distribution_of_homestead_land2: { 2005-06: @distribution_of_homestead_land2.2005-06, 2010-11: @distribution_of_homestead_land2.2010-11, Indicator: @distribution_of_homestead_land2.Indicator, Sector: @distribution_of_homestead_land2.Sector } }
    end

    assert_redirected_to distribution_of_homestead_land2_url(DistributionOfHomesteadLand2.last)
  end

  test "should show distribution_of_homestead_land2" do
    get distribution_of_homestead_land2_url(@distribution_of_homestead_land2)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribution_of_homestead_land2_url(@distribution_of_homestead_land2)
    assert_response :success
  end

  test "should update distribution_of_homestead_land2" do
    patch distribution_of_homestead_land2_url(@distribution_of_homestead_land2), params: { distribution_of_homestead_land2: { 2005-06: @distribution_of_homestead_land2.2005-06, 2010-11: @distribution_of_homestead_land2.2010-11, Indicator: @distribution_of_homestead_land2.Indicator, Sector: @distribution_of_homestead_land2.Sector } }
    assert_redirected_to distribution_of_homestead_land2_url(@distribution_of_homestead_land2)
  end

  test "should destroy distribution_of_homestead_land2" do
    assert_difference('DistributionOfHomesteadLand2.count', -1) do
      delete distribution_of_homestead_land2_url(@distribution_of_homestead_land2)
    end

    assert_redirected_to distribution_of_homestead_land2s_url
  end
end
