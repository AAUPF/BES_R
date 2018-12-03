require 'test_helper'

class DistrictWiseSection3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section3 = district_wise_section3s(:one)
  end

  test "should get index" do
    get district_wise_section3s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section3_url
    assert_response :success
  end

  test "should create district_wise_section3" do
    assert_difference('DistrictWiseSection3.count') do
      post district_wise_section3s_url, params: { district_wise_section3: { Districts: @district_wise_section3.Districts, Primary1: @district_wise_section3.Primary1, Total: @district_wise_section3.Total, Upper_Primary: @district_wise_section3.Upper_Primary, Year: @district_wise_section3.Year } }
    end

    assert_redirected_to district_wise_section3_url(DistrictWiseSection3.last)
  end

  test "should show district_wise_section3" do
    get district_wise_section3_url(@district_wise_section3)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section3_url(@district_wise_section3)
    assert_response :success
  end

  test "should update district_wise_section3" do
    patch district_wise_section3_url(@district_wise_section3), params: { district_wise_section3: { Districts: @district_wise_section3.Districts, Primary1: @district_wise_section3.Primary1, Total: @district_wise_section3.Total, Upper_Primary: @district_wise_section3.Upper_Primary, Year: @district_wise_section3.Year } }
    assert_redirected_to district_wise_section3_url(@district_wise_section3)
  end

  test "should destroy district_wise_section3" do
    assert_difference('DistrictWiseSection3.count', -1) do
      delete district_wise_section3_url(@district_wise_section3)
    end

    assert_redirected_to district_wise_section3s_url
  end
end
