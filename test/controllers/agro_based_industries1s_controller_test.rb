require 'test_helper'

class AgroBasedIndustries1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agro_based_industries1 = agro_based_industries1s(:one)
  end

  test "should get index" do
    get agro_based_industries1s_url
    assert_response :success
  end

  test "should get new" do
    get new_agro_based_industries1_url
    assert_response :success
  end

  test "should create agro_based_industries1" do
    assert_difference('AgroBasedIndustries1.count') do
      post agro_based_industries1s_url, params: { agro_based_industries1: { Name_of_Sugar_Mill: @agro_based_industries1.Name_of_Sugar_Mill, Recovery_Percentage: @agro_based_industries1.Recovery_Percentage, Sugar_Produced: @agro_based_industries1.Sugar_Produced, Sugarcane_Crushed: @agro_based_industries1.Sugarcane_Crushed, Year: @agro_based_industries1.Year } }
    end

    assert_redirected_to agro_based_industries1_url(AgroBasedIndustries1.last)
  end

  test "should show agro_based_industries1" do
    get agro_based_industries1_url(@agro_based_industries1)
    assert_response :success
  end

  test "should get edit" do
    get edit_agro_based_industries1_url(@agro_based_industries1)
    assert_response :success
  end

  test "should update agro_based_industries1" do
    patch agro_based_industries1_url(@agro_based_industries1), params: { agro_based_industries1: { Name_of_Sugar_Mill: @agro_based_industries1.Name_of_Sugar_Mill, Recovery_Percentage: @agro_based_industries1.Recovery_Percentage, Sugar_Produced: @agro_based_industries1.Sugar_Produced, Sugarcane_Crushed: @agro_based_industries1.Sugarcane_Crushed, Year: @agro_based_industries1.Year } }
    assert_redirected_to agro_based_industries1_url(@agro_based_industries1)
  end

  test "should destroy agro_based_industries1" do
    assert_difference('AgroBasedIndustries1.count', -1) do
      delete agro_based_industries1_url(@agro_based_industries1)
    end

    assert_redirected_to agro_based_industries1s_url
  end
end
