require 'test_helper'

class DemographicProfile2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @demographic_profile2 = demographic_profile2s(:one)
  end

  test "should get index" do
    get demographic_profile2s_url
    assert_response :success
  end

  test "should get new" do
    get new_demographic_profile2_url
    assert_response :success
  end

  test "should create demographic_profile2" do
    assert_difference('DemographicProfile2.count') do
      post demographic_profile2s_url, params: { demographic_profile2: { Decadal_Growth: @demographic_profile2.Decadal_Growth, Density: @demographic_profile2.Density, Districts: @demographic_profile2.Districts, Percentage_Population: @demographic_profile2.Percentage_Population, Population: @demographic_profile2.Population, Sex_Ratio_Child: @demographic_profile2.Sex_Ratio_Child, Sex_Ratio_Overall: @demographic_profile2.Sex_Ratio_Overall, Urbanisation: @demographic_profile2.Urbanisation, Year: @demographic_profile2.Year } }
    end

    assert_redirected_to demographic_profile2_url(DemographicProfile2.last)
  end

  test "should show demographic_profile2" do
    get demographic_profile2_url(@demographic_profile2)
    assert_response :success
  end

  test "should get edit" do
    get edit_demographic_profile2_url(@demographic_profile2)
    assert_response :success
  end

  test "should update demographic_profile2" do
    patch demographic_profile2_url(@demographic_profile2), params: { demographic_profile2: { Decadal_Growth: @demographic_profile2.Decadal_Growth, Density: @demographic_profile2.Density, Districts: @demographic_profile2.Districts, Percentage_Population: @demographic_profile2.Percentage_Population, Population: @demographic_profile2.Population, Sex_Ratio_Child: @demographic_profile2.Sex_Ratio_Child, Sex_Ratio_Overall: @demographic_profile2.Sex_Ratio_Overall, Urbanisation: @demographic_profile2.Urbanisation, Year: @demographic_profile2.Year } }
    assert_redirected_to demographic_profile2_url(@demographic_profile2)
  end

  test "should destroy demographic_profile2" do
    assert_difference('DemographicProfile2.count', -1) do
      delete demographic_profile2_url(@demographic_profile2)
    end

    assert_redirected_to demographic_profile2s_url
  end
end
