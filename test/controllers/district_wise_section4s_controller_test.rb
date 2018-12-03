require 'test_helper'

class DistrictWiseSection4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section4 = district_wise_section4s(:one)
  end

  test "should get index" do
    get district_wise_section4s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section4_url
    assert_response :success
  end

  test "should create district_wise_section4" do
    assert_difference('DistrictWiseSection4.count') do
      post district_wise_section4s_url, params: { district_wise_section4: { Districts: @district_wise_section4.Districts, Primary1: @district_wise_section4.Primary1, Total: @district_wise_section4.Total, Upper_Primary: @district_wise_section4.Upper_Primary, Year: @district_wise_section4.Year } }
    end

    assert_redirected_to district_wise_section4_url(DistrictWiseSection4.last)
  end

  test "should show district_wise_section4" do
    get district_wise_section4_url(@district_wise_section4)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section4_url(@district_wise_section4)
    assert_response :success
  end

  test "should update district_wise_section4" do
    patch district_wise_section4_url(@district_wise_section4), params: { district_wise_section4: { Districts: @district_wise_section4.Districts, Primary1: @district_wise_section4.Primary1, Total: @district_wise_section4.Total, Upper_Primary: @district_wise_section4.Upper_Primary, Year: @district_wise_section4.Year } }
    assert_redirected_to district_wise_section4_url(@district_wise_section4)
  end

  test "should destroy district_wise_section4" do
    assert_difference('DistrictWiseSection4.count', -1) do
      delete district_wise_section4_url(@district_wise_section4)
    end

    assert_redirected_to district_wise_section4s_url
  end
end
