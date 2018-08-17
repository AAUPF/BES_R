require 'test_helper'

class DemographicProfile1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demographic_profile1 = demographic_profile1s(:one)
  end

  test "should get index" do
    get demographic_profile1s_url
    assert_response :success
  end

  test "should get new" do
    get new_demographic_profile1_url
    assert_response :success
  end

  test "should create demographic_profile1" do
    assert_difference('DemographicProfile1.count') do
      post demographic_profile1s_url, params: { demographic_profile1: { Bihar: @demographic_profile1.Bihar, Demographic_Indicator: @demographic_profile1.Demographic_Indicator, India: @demographic_profile1.India, Year: @demographic_profile1.Year } }
    end

    assert_redirected_to demographic_profile1_url(DemographicProfile1.last)
  end

  test "should show demographic_profile1" do
    get demographic_profile1_url(@demographic_profile1)
    assert_response :success
  end

  test "should get edit" do
    get edit_demographic_profile1_url(@demographic_profile1)
    assert_response :success
  end

  test "should update demographic_profile1" do
    patch demographic_profile1_url(@demographic_profile1), params: { demographic_profile1: { Bihar: @demographic_profile1.Bihar, Demographic_Indicator: @demographic_profile1.Demographic_Indicator, India: @demographic_profile1.India, Year: @demographic_profile1.Year } }
    assert_redirected_to demographic_profile1_url(@demographic_profile1)
  end

  test "should destroy demographic_profile1" do
    assert_difference('DemographicProfile1.count', -1) do
      delete demographic_profile1_url(@demographic_profile1)
    end

    assert_redirected_to demographic_profile1s_url
  end
end
