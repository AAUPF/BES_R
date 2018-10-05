require 'test_helper'

class AgroBasedIndustries5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agro_based_industries5 = agro_based_industries5s(:one)
  end

  test "should get index" do
    get agro_based_industries5s_url
    assert_response :success
  end

  test "should get new" do
    get new_agro_based_industries5_url
    assert_response :success
  end

  test "should create agro_based_industries5" do
    assert_difference('AgroBasedIndustries5.count') do
      post agro_based_industries5s_url, params: { agro_based_industries5: { 2012-13: @agro_based_industries5.2012-13, 2013-14: @agro_based_industries5.2013-14, 2014-15: @agro_based_industries5.2014-15, 2015-16: @agro_based_industries5.2015-16, 2016-17: @agro_based_industries5.2016-17, Indicator: @agro_based_industries5.Indicator, Sector: @agro_based_industries5.Sector } }
    end

    assert_redirected_to agro_based_industries5_url(AgroBasedIndustries5.last)
  end

  test "should show agro_based_industries5" do
    get agro_based_industries5_url(@agro_based_industries5)
    assert_response :success
  end

  test "should get edit" do
    get edit_agro_based_industries5_url(@agro_based_industries5)
    assert_response :success
  end

  test "should update agro_based_industries5" do
    patch agro_based_industries5_url(@agro_based_industries5), params: { agro_based_industries5: { 2012-13: @agro_based_industries5.2012-13, 2013-14: @agro_based_industries5.2013-14, 2014-15: @agro_based_industries5.2014-15, 2015-16: @agro_based_industries5.2015-16, 2016-17: @agro_based_industries5.2016-17, Indicator: @agro_based_industries5.Indicator, Sector: @agro_based_industries5.Sector } }
    assert_redirected_to agro_based_industries5_url(@agro_based_industries5)
  end

  test "should destroy agro_based_industries5" do
    assert_difference('AgroBasedIndustries5.count', -1) do
      delete agro_based_industries5_url(@agro_based_industries5)
    end

    assert_redirected_to agro_based_industries5s_url
  end
end
