require 'test_helper'

class DistrictWiseSection1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section1 = district_wise_section1s(:one)
  end

  test "should get index" do
    get district_wise_section1s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section1_url
    assert_response :success
  end

  test "should create district_wise_section1" do
    assert_difference('DistrictWiseSection1.count') do
      post district_wise_section1s_url, params: { district_wise_section1: { 2013-14: @district_wise_section1.2013-14, 2014-15: @district_wise_section1.2014-15, 2015-16: @district_wise_section1.2015-16, 2016-17: @district_wise_section1.2016-17, Indicator: @district_wise_section1.Indicator, Population_Share: @district_wise_section1.Population_Share, Sector: @district_wise_section1.Sector } }
    end

    assert_redirected_to district_wise_section1_url(DistrictWiseSection1.last)
  end

  test "should show district_wise_section1" do
    get district_wise_section1_url(@district_wise_section1)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section1_url(@district_wise_section1)
    assert_response :success
  end

  test "should update district_wise_section1" do
    patch district_wise_section1_url(@district_wise_section1), params: { district_wise_section1: { 2013-14: @district_wise_section1.2013-14, 2014-15: @district_wise_section1.2014-15, 2015-16: @district_wise_section1.2015-16, 2016-17: @district_wise_section1.2016-17, Indicator: @district_wise_section1.Indicator, Population_Share: @district_wise_section1.Population_Share, Sector: @district_wise_section1.Sector } }
    assert_redirected_to district_wise_section1_url(@district_wise_section1)
  end

  test "should destroy district_wise_section1" do
    assert_difference('DistrictWiseSection1.count', -1) do
      delete district_wise_section1_url(@district_wise_section1)
    end

    assert_redirected_to district_wise_section1s_url
  end
end
