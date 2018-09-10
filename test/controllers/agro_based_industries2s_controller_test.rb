require 'test_helper'

class AgroBasedIndustries2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agro_based_industries2 = agro_based_industries2s(:one)
  end

  test "should get index" do
    get agro_based_industries2s_url
    assert_response :success
  end

  test "should get new" do
    get new_agro_based_industries2_url
    assert_response :success
  end

  test "should create agro_based_industries2" do
    assert_difference('AgroBasedIndustries2.count') do
      post agro_based_industries2s_url, params: { agro_based_industries2: { Location_of_Union_or_Project: @agro_based_industries2.Location_of_Union_or_Project, Organised_Societies: @agro_based_industries2.Organised_Societies, Registered_Societies: @agro_based_industries2.Registered_Societies, Working_Societies: @agro_based_industries2.Working_Societies, Year: @agro_based_industries2.Year } }
    end

    assert_redirected_to agro_based_industries2_url(AgroBasedIndustries2.last)
  end

  test "should show agro_based_industries2" do
    get agro_based_industries2_url(@agro_based_industries2)
    assert_response :success
  end

  test "should get edit" do
    get edit_agro_based_industries2_url(@agro_based_industries2)
    assert_response :success
  end

  test "should update agro_based_industries2" do
    patch agro_based_industries2_url(@agro_based_industries2), params: { agro_based_industries2: { Location_of_Union_or_Project: @agro_based_industries2.Location_of_Union_or_Project, Organised_Societies: @agro_based_industries2.Organised_Societies, Registered_Societies: @agro_based_industries2.Registered_Societies, Working_Societies: @agro_based_industries2.Working_Societies, Year: @agro_based_industries2.Year } }
    assert_redirected_to agro_based_industries2_url(@agro_based_industries2)
  end

  test "should destroy agro_based_industries2" do
    assert_difference('AgroBasedIndustries2.count', -1) do
      delete agro_based_industries2_url(@agro_based_industries2)
    end

    assert_redirected_to agro_based_industries2s_url
  end
end
