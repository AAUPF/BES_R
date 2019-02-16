require 'test_helper'

class DistrictWiseSection10sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section10 = district_wise_section10s(:one)
  end

  test "should get index" do
    get district_wise_section10s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section10_url
    assert_response :success
  end

  test "should create district_wise_section10" do
    assert_difference('DistrictWiseSection10.count') do
      post district_wise_section10s_url, params: { district_wise_section10: { 2012-13: @district_wise_section10.2012-13, 2013-14: @district_wise_section10.2013-14, 2014-15: @district_wise_section10.2014-15, 2015-16: @district_wise_section10.2015-16, 2016-17: @district_wise_section10.2016-17, Districts: @district_wise_section10.Districts, Indicator: @district_wise_section10.Indicator, Indicator1: @district_wise_section10.Indicator1 } }
    end

    assert_redirected_to district_wise_section10_url(DistrictWiseSection10.last)
  end

  test "should show district_wise_section10" do
    get district_wise_section10_url(@district_wise_section10)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section10_url(@district_wise_section10)
    assert_response :success
  end

  test "should update district_wise_section10" do
    patch district_wise_section10_url(@district_wise_section10), params: { district_wise_section10: { 2012-13: @district_wise_section10.2012-13, 2013-14: @district_wise_section10.2013-14, 2014-15: @district_wise_section10.2014-15, 2015-16: @district_wise_section10.2015-16, 2016-17: @district_wise_section10.2016-17, Districts: @district_wise_section10.Districts, Indicator: @district_wise_section10.Indicator, Indicator1: @district_wise_section10.Indicator1 } }
    assert_redirected_to district_wise_section10_url(@district_wise_section10)
  end

  test "should destroy district_wise_section10" do
    assert_difference('DistrictWiseSection10.count', -1) do
      delete district_wise_section10_url(@district_wise_section10)
    end

    assert_redirected_to district_wise_section10s_url
  end
end
