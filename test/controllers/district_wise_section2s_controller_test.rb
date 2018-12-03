require 'test_helper'

class DistrictWiseSection2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @district_wise_section2 = district_wise_section2s(:one)
  end

  test "should get index" do
    get district_wise_section2s_url
    assert_response :success
  end

  test "should get new" do
    get new_district_wise_section2_url
    assert_response :success
  end

  test "should create district_wise_section2" do
    assert_difference('DistrictWiseSection2.count') do
      post district_wise_section2s_url, params: { district_wise_section2: { Districts: @district_wise_section2.Districts, Primary: @district_wise_section2.Primary, Total: @district_wise_section2.Total, Upper_Primary: @district_wise_section2.Upper_Primary, Year: @district_wise_section2.Year } }
    end

    assert_redirected_to district_wise_section2_url(DistrictWiseSection2.last)
  end

  test "should show district_wise_section2" do
    get district_wise_section2_url(@district_wise_section2)
    assert_response :success
  end

  test "should get edit" do
    get edit_district_wise_section2_url(@district_wise_section2)
    assert_response :success
  end

  test "should update district_wise_section2" do
    patch district_wise_section2_url(@district_wise_section2), params: { district_wise_section2: { Districts: @district_wise_section2.Districts, Primary: @district_wise_section2.Primary, Total: @district_wise_section2.Total, Upper_Primary: @district_wise_section2.Upper_Primary, Year: @district_wise_section2.Year } }
    assert_redirected_to district_wise_section2_url(@district_wise_section2)
  end

  test "should destroy district_wise_section2" do
    assert_difference('DistrictWiseSection2.count', -1) do
      delete district_wise_section2_url(@district_wise_section2)
    end

    assert_redirected_to district_wise_section2s_url
  end
end
