require 'test_helper'

class AgroBasedIndustries4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agro_based_industries4 = agro_based_industries4s(:one)
  end

  test "should get index" do
    get agro_based_industries4s_url
    assert_response :success
  end

  test "should get new" do
    get new_agro_based_industries4_url
    assert_response :success
  end

  test "should create agro_based_industries4" do
    assert_difference('AgroBasedIndustries4.count') do
      post agro_based_industries4s_url, params: { agro_based_industries4: { Location_of_Project: @agro_based_industries4.Location_of_Project, Procurement: @agro_based_industries4.Procurement, Year: @agro_based_industries4.Year } }
    end

    assert_redirected_to agro_based_industries4_url(AgroBasedIndustries4.last)
  end

  test "should show agro_based_industries4" do
    get agro_based_industries4_url(@agro_based_industries4)
    assert_response :success
  end

  test "should get edit" do
    get edit_agro_based_industries4_url(@agro_based_industries4)
    assert_response :success
  end

  test "should update agro_based_industries4" do
    patch agro_based_industries4_url(@agro_based_industries4), params: { agro_based_industries4: { Location_of_Project: @agro_based_industries4.Location_of_Project, Procurement: @agro_based_industries4.Procurement, Year: @agro_based_industries4.Year } }
    assert_redirected_to agro_based_industries4_url(@agro_based_industries4)
  end

  test "should destroy agro_based_industries4" do
    assert_difference('AgroBasedIndustries4.count', -1) do
      delete agro_based_industries4_url(@agro_based_industries4)
    end

    assert_redirected_to agro_based_industries4s_url
  end
end
