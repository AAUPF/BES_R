require 'test_helper'

class AgroBasedIndustries3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agro_based_industries3 = agro_based_industries3s(:one)
  end

  test "should get index" do
    get agro_based_industries3s_url
    assert_response :success
  end

  test "should get new" do
    get new_agro_based_industries3_url
    assert_response :success
  end

  test "should create agro_based_industries3" do
    assert_difference('AgroBasedIndustries3.count') do
      post agro_based_industries3s_url, params: { agro_based_industries3: { Daily_Milk_Collection: @agro_based_industries3.Daily_Milk_Collection, Union/Project: @agro_based_industries3.Union/Project, Year: @agro_based_industries3.Year } }
    end

    assert_redirected_to agro_based_industries3_url(AgroBasedIndustries3.last)
  end

  test "should show agro_based_industries3" do
    get agro_based_industries3_url(@agro_based_industries3)
    assert_response :success
  end

  test "should get edit" do
    get edit_agro_based_industries3_url(@agro_based_industries3)
    assert_response :success
  end

  test "should update agro_based_industries3" do
    patch agro_based_industries3_url(@agro_based_industries3), params: { agro_based_industries3: { Daily_Milk_Collection: @agro_based_industries3.Daily_Milk_Collection, Union/Project: @agro_based_industries3.Union/Project, Year: @agro_based_industries3.Year } }
    assert_redirected_to agro_based_industries3_url(@agro_based_industries3)
  end

  test "should destroy agro_based_industries3" do
    assert_difference('AgroBasedIndustries3.count', -1) do
      delete agro_based_industries3_url(@agro_based_industries3)
    end

    assert_redirected_to agro_based_industries3s_url
  end
end
