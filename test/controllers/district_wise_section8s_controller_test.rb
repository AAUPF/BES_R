require 'test_helper'

class DistrictWiseSection8sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section8 = district_wise_section8s(:one)
  end

  test "should get index" do
    get district_wise_section8s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section8_url
    assert_response :success
  end

  test "should create district_wise_section8" do
    assert_difference('DistrictWiseSection8.count') do
      post district_wise_section8s_url, params: { district_wise_section8: { Affiliated_College: @district_wise_section8.Affiliated_College, Constituent_College: @district_wise_section8.Constituent_College, Districts: @district_wise_section8.Districts, Year: @district_wise_section8.Year } }
    end

    assert_redirected_to district_wise_section8_url(DistrictWiseSection8.last)
  end

  test "should show district_wise_section8" do
    get district_wise_section8_url(@district_wise_section8)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section8_url(@district_wise_section8)
    assert_response :success
  end

  test "should update district_wise_section8" do
    patch district_wise_section8_url(@district_wise_section8), params: { district_wise_section8: { Affiliated_College: @district_wise_section8.Affiliated_College, Constituent_College: @district_wise_section8.Constituent_College, Districts: @district_wise_section8.Districts, Year: @district_wise_section8.Year } }
    assert_redirected_to district_wise_section8_url(@district_wise_section8)
  end

  test "should destroy district_wise_section8" do
    assert_difference('DistrictWiseSection8.count', -1) do
      delete district_wise_section8_url(@district_wise_section8)
    end

    assert_redirected_to district_wise_section8s_url
  end
end
