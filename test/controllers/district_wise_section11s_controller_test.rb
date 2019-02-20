require 'test_helper'

class DistrictWiseSection11sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section11 = district_wise_section11s(:one)
  end

  test "should get index" do
    get district_wise_section11s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section11_url
    assert_response :success
  end

  test "should create district_wise_section11" do
    assert_difference('DistrictWiseSection11.count') do
      post district_wise_section11s_url, params: { district_wise_section11: { 2014-15: @district_wise_section11.2014-15, 2015-16: @district_wise_section11.2015-16, 2016-17: @district_wise_section11.2016-17, Districts: @district_wise_section11.Districts, Indicator: @district_wise_section11.Indicator, Indicator1: @district_wise_section11.Indicator1 } }
    end

    assert_redirected_to district_wise_section11_url(DistrictWiseSection11.last)
  end

  test "should show district_wise_section11" do
    get district_wise_section11_url(@district_wise_section11)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section11_url(@district_wise_section11)
    assert_response :success
  end

  test "should update district_wise_section11" do
    patch district_wise_section11_url(@district_wise_section11), params: { district_wise_section11: { 2014-15: @district_wise_section11.2014-15, 2015-16: @district_wise_section11.2015-16, 2016-17: @district_wise_section11.2016-17, Districts: @district_wise_section11.Districts, Indicator: @district_wise_section11.Indicator, Indicator1: @district_wise_section11.Indicator1 } }
    assert_redirected_to district_wise_section11_url(@district_wise_section11)
  end

  test "should destroy district_wise_section11" do
    assert_difference('DistrictWiseSection11.count', -1) do
      delete district_wise_section11_url(@district_wise_section11)
    end

    assert_redirected_to district_wise_section11s_url
  end
end
